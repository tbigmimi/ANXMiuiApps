.class Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;
.super Ljava/lang/Object;
.source "StitchingPresenter.java"

# interfaces
.implements Lcom/miui/gallery/collage/core/stitching/StitchingDataLoader$DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;->onCreateDataLoader(Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)Lcom/miui/gallery/collage/app/common/IDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

.field final synthetic val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;->this$0:Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

    iput-object p2, p0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoad(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/collage/core/stitching/StitchingModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "stitchingModels":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/collage/core/stitching/StitchingModel;>;"
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;->this$0:Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

    invoke-static {v0}, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;->access$000(Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;->this$0:Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;

    invoke-static {v0}, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;->access$000(Lcom/miui/gallery/collage/core/stitching/StitchingPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/gallery/collage/core/stitching/StitchingPresenter$1;->val$dataLoadListener:Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;

    invoke-interface {v0}, Lcom/miui/gallery/collage/core/CollagePresenter$DataLoadListener;->onDataLoad()V

    .line 77
    :cond_0
    return-void
.end method

.class public abstract Lcom/miui/gallery/editor/photo/core/common/provider/AbstractTextProvider;
.super Lcom/miui/gallery/editor/photo/core/SdkProvider;
.source "AbstractTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/SdkProvider",
        "<",
        "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
        "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/core/Effect",
            "<+",
            "Lcom/miui/gallery/editor/photo/core/SdkProvider",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            "Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "supported":Lcom/miui/gallery/editor/photo/core/Effect;, "Lcom/miui/gallery/editor/photo/core/Effect<+Lcom/miui/gallery/editor/photo/core/SdkProvider<Lcom/miui/gallery/editor/photo/core/common/model/TextData;Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractEffectFragment;>;>;"
    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/SdkProvider;-><init>(Lcom/miui/gallery/editor/photo/core/Effect;)V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract listWatermark()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/common/model/TextData;",
            ">;"
        }
    .end annotation
.end method

.class Lcom/alibaba/imagesearch/ui/SearchResultActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/imagesearch/ui/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/imagesearch/ui/SearchResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$3;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/imagesearch/ui/SearchResultActivity$3;->a:Lcom/alibaba/imagesearch/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/ui/SearchResultActivity;->finish()V

    return-void
.end method

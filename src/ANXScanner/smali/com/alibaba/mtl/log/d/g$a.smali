.class Lcom/alibaba/mtl/log/d/g$a;
.super Ljava/lang/Object;
.source "KeyArraySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/log/d/g;


# direct methods
.method private constructor <init>(Lcom/alibaba/mtl/log/d/g;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/g$a;->b:Lcom/alibaba/mtl/log/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/mtl/log/d/g;Lcom/alibaba/mtl/log/d/g$1;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/mtl/log/d/g$a;-><init>(Lcom/alibaba/mtl/log/d/g;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/mtl/log/d/g$a;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/String;
    .param p2, "o2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

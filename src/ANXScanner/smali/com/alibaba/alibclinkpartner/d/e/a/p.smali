.class public Lcom/alibaba/alibclinkpartner/d/e/a/p;
.super Lcom/alibaba/alibclinkpartner/d/e/a/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "cf.linkpartner.3.1"

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/alibaba/alibclinkpartner/d/e/a/d;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "time"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "targetAppInfo"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "targetUrl"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unknown"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "utdid"

    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alibaba/alibclinkpartner/d/e/a/p;->d:Ljava/lang/String;

    goto :goto_3
.end method

.class public Lcom/nexstreaming/kminternal/nexvideoeditor/b;
.super Ljava/lang/Object;
.source "NexCache.java"


# static fields
.field private static a:Lcom/nexstreaming/kminternal/nexvideoeditor/b;


# instance fields
.field private b:Landroid/util/LruCache;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(I)V

    .line 35
    return-void
.end method

.method public static a()Lcom/nexstreaming/kminternal/nexvideoeditor/b;
    .locals 4

    .prologue
    .line 21
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    .line 28
    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    invoke-direct {v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;-><init>(I)V

    sput-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    .line 30
    :cond_0
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/b;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/b$1;

    invoke-direct {v0, p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/b$1;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/b;I)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b:Landroid/util/LruCache;

    .line 57
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache create (size, isUsedToEntryCnt)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "NexCache"

    const-string v1, "releaseCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 86
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/b;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t in the cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "NexCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removes in the cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

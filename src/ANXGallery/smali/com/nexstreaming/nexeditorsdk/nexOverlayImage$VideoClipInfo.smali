.class public Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;
.super Ljava/lang/Object;
.source "nexOverlayImage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexOverlayImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoClipInfo"
.end annotation


# instance fields
.field private mHasAudio:Z

.field private mHasVideo:Z

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mTotalTime:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Z)Z
    .locals 0

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHasAudio:Z

    return p1
.end method

.method static synthetic access$102(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Z)Z
    .locals 0

    .prologue
    .line 871
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHasVideo:Z

    return p1
.end method

.method static synthetic access$202(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I
    .locals 0

    .prologue
    .line 871
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mTotalTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;)I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I
    .locals 0

    .prologue
    .line 871
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;)I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;I)I
    .locals 0

    .prologue
    .line 871
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHeight:I

    return p1
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;)Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;
    .locals 3

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 948
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :try_start_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    :goto_0
    return-object v0

    .line 950
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 951
    :goto_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 950
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHeight:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mTotalTime:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 930
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mWidth:I

    return v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHasAudio:Z

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$VideoClipInfo;->mHasVideo:Z

    return v0
.end method

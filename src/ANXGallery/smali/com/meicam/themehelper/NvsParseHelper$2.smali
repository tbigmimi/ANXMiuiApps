.class final Lcom/meicam/themehelper/NvsParseHelper$2;
.super Ljava/lang/Object;
.source "NvsParseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/themehelper/NvsParseHelper;->sortFileByName(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meicam/themehelper/NvsImageFileDesc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meicam/themehelper/NvsImageFileDesc;Lcom/meicam/themehelper/NvsImageFileDesc;)I
    .locals 2
    .param p1, "arg0"    # Lcom/meicam/themehelper/NvsImageFileDesc;
    .param p2, "arg1"    # Lcom/meicam/themehelper/NvsImageFileDesc;

    .prologue
    .line 226
    iget-object v0, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 224
    check-cast p1, Lcom/meicam/themehelper/NvsImageFileDesc;

    check-cast p2, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {p0, p1, p2}, Lcom/meicam/themehelper/NvsParseHelper$2;->compare(Lcom/meicam/themehelper/NvsImageFileDesc;Lcom/meicam/themehelper/NvsImageFileDesc;)I

    move-result v0

    return v0
.end method

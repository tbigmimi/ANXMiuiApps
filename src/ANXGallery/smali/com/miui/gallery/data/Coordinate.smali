.class Lcom/miui/gallery/data/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/miui/gallery/data/Coordinate;->latitude:D

    .line 9
    iput-wide p3, p0, Lcom/miui/gallery/data/Coordinate;->longitude:D

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "latitudeString"    # Ljava/lang/String;
    .param p2, "latitudeRef"    # Ljava/lang/String;
    .param p3, "longitudeString"    # Ljava/lang/String;
    .param p4, "longitudeRef"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/Coordinate;->latitude:D

    .line 15
    invoke-static {p3, p4}, Lcom/miui/gallery/data/LocationUtil;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gallery/data/Coordinate;->longitude:D

    .line 16
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/miui/gallery/data/Coordinate;->latitude:D

    iget-wide v2, p0, Lcom/miui/gallery/data/Coordinate;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gallery/data/LocationUtil;->isValidateCoordinate(DD)Z

    move-result v0

    return v0
.end method

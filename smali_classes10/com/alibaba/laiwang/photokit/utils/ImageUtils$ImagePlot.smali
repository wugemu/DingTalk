.class public final enum Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/utils/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImagePlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

.field public static final enum Default:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

.field public static final enum Grid:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

.field public static final enum Post:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;


# instance fields
.field public longHeight:Ljava/lang/String;

.field public longWidth:Ljava/lang/String;

.field public normal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 854
    new-instance v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    const-string/jumbo v1, "Post"

    const-string/jumbo v3, ".336x336.jpg"

    const-string/jumbo v4, ".336x112xz.jpg"

    const-string/jumbo v5, ".112x336xz.jpg"

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->Post:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    new-instance v3, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    const-string/jumbo v4, "Default"

    const-string/jumbo v6, ".320x320.jpg"

    const-string/jumbo v7, ".160x240xz.jpg"

    const-string/jumbo v8, ".160x240xz.jpg"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->Default:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    new-instance v3, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    const-string/jumbo v4, "Grid"

    const-string/jumbo v6, ".180x180.jpg"

    const-string/jumbo v7, ".160x240xz.jpg"

    const-string/jumbo v8, ".160x240xz.jpg"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->Grid:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    .line 852
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    sget-object v1, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->Post:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->Default:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->Grid:Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    aput-object v1, v0, v10

    sput-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->$VALUES:[Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "normal"    # Ljava/lang/String;
    .param p4, "longWidth"    # Ljava/lang/String;
    .param p5, "longHeight"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 856
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    const-string/jumbo v0, ".336x336.jpg"

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->normal:Ljava/lang/String;

    .line 863
    const-string/jumbo v0, ".336x112xz.jpg"

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->longWidth:Ljava/lang/String;

    .line 864
    const-string/jumbo v0, ".112x336xz.jpg"

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->longHeight:Ljava/lang/String;

    .line 857
    iput-object p3, p0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->normal:Ljava/lang/String;

    .line 858
    iput-object p5, p0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->longHeight:Ljava/lang/String;

    .line 859
    iput-object p4, p0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->longWidth:Ljava/lang/String;

    .line 860
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 852
    const-class v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->$VALUES:[Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    invoke-virtual {v0}, [Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/laiwang/photokit/utils/ImageUtils$ImagePlot;

    return-object v0
.end method

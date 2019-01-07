.class public abstract Ljbm;
.super Ljava/lang/Object;
.source "LogInfo.java"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/loc/ah;
        a = "a1"
        b = 0x6
    .end annotation
.end field

.field protected b:I
    .annotation runtime Lcom/loc/ah;
        a = "b2"
        b = 0x2
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Lcom/loc/ah;
        a = "b1"
        b = 0x6
    .end annotation
.end field

.field protected d:I
    .annotation runtime Lcom/loc/ah;
        a = "b3"
        b = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljbm;->b:I

    const/4 v0, 0x1

    iput v0, p0, Ljbm;->d:I

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "b1"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljbg;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string/jumbo v0, "b2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ljbm;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ljbm;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljbm;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljbm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Ljbm;->d:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Ljbm;->d:I

    return v0
.end method

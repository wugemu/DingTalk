.class public abstract Likr;
.super Ljava/lang/Object;
.source "Appender.java"


# instance fields
.field protected a:Lijz;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lijz;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Likr;->a:Lijz;

    .line 50
    iput-object p2, p0, Likr;->b:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lijz;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Likr;->c:Landroid/content/Context;

    .line 52
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Likr;->d:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract a([BII)Z
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Likr;->b:Ljava/lang/String;

    return-object v0
.end method

.class Ljzd$b;
.super Ljvg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field b:J

.field final synthetic c:Ljzd;


# direct methods
.method constructor <init>(Ljzd;)V
    .locals 2

    iput-object p1, p0, Ljzd$b;->c:Ljzd;

    invoke-direct {p0}, Ljvg$b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljzd$b;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public final Lajd$a;
.super Ljava/util/TimerTask;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajd$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lajd;

.field private b:Z


# direct methods
.method private constructor <init>(Lajd;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lajd$a;->a:Lajd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lajd;B)V
    .locals 0
    .param p1, "x0"    # Lajd;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lajd$a;-><init>(Lajd;)V

    return-void
.end method

.method static synthetic a(Lajd$a;)Z
    .locals 1
    .param p0, "x0"    # Lajd$a;

    .prologue
    .line 144
    iget-boolean v0, p0, Lajd$a;->b:Z

    return v0
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajd$a;->b:Z

    .line 156
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lajd$a;->a:Lajd;

    invoke-static {v0}, Lajd;->a(Lajd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lajd$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lajd$a$a;-><init>(Lajd$a;B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

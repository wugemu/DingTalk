.class final Lajd$a$a;
.super Ljava/lang/Object;
.source "Throttle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lajd$a;


# direct methods
.method private constructor <init>(Lajd$a;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lajd$a$a;->a:Lajd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lajd$a;B)V
    .locals 0
    .param p1, "x0"    # Lajd$a;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lajd$a$a;-><init>(Lajd$a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 162
    iget-object v0, p0, Lajd$a$a;->a:Lajd$a;

    iget-object v0, v0, Lajd$a;->a:Lajd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lajd;->a(Lajd;Lajd$a;)Lajd$a;

    .line 163
    iget-object v0, p0, Lajd$a$a;->a:Lajd$a;

    invoke-static {v0}, Lajd$a;->a(Lajd$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lajd$a$a;->a:Lajd$a;

    iget-object v0, v0, Lajd$a;->a:Lajd;

    invoke-static {v0}, Lajd;->b(Lajd;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 167
    :cond_0
    return-void
.end method

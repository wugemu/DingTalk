.class final Lanet/channel/SessionCenter$2;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/SessionCenter;->background()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/SessionCenter;


# direct methods
.method constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lanet/channel/SessionCenter$2;->a:Lanet/channel/SessionCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 370
    const-string/jumbo v0, "awcn.SessionCenter"

    const-string/jumbo v1, "horse serial ride start"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-static {}, Lid;->a()V

    .line 372
    return-void
.end method

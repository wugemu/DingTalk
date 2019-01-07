.class final Lig$a$1;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig$a;->b(Lanet/channel/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/Session;

.field final synthetic b:Lig$a;


# direct methods
.method constructor <init>(Lig$a;Lanet/channel/Session;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lig$a$1;->b:Lig$a;

    iput-object p2, p0, Lig$a$1;->a:Lanet/channel/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Lig$a$1;->b:Lig$a;

    iget-object v0, v0, Lig$a;->c:Lig;

    iget-object v1, p0, Lig$a$1;->b:Lig$a;

    .line 1183
    iget-object v1, v1, Lig$a;->a:Landroid/content/Context;

    .line 293
    iget-object v2, p0, Lig$a$1;->a:Lanet/channel/Session;

    invoke-virtual {v2}, Lanet/channel/Session;->g()Lanet/channel/entity/ConnType;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lig;->a(Landroid/content/Context;Lanet/channel/entity/ConnType$TypeLevel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

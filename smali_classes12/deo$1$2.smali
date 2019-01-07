.class final Ldeo$1$2;
.super Ljava/lang/Object;
.source "GroupThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldeo$1;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldeo$1;


# direct methods
.method constructor <init>(Ldeo$1;)V
    .locals 0
    .param p1, "this$1"    # Ldeo$1;

    .prologue
    .line 62
    iput-object p1, p0, Ldeo$1$2;->a:Ldeo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Ldeo$1$2;->a:Ldeo$1;

    iget-object v0, v0, Ldeo$1;->b:Ldeo;

    iget-object v1, p0, Ldeo$1$2;->a:Ldeo$1;

    iget-object v1, v1, Ldeo$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ldeo;->a(Ldeo;Ljava/lang/String;)V

    .line 66
    return-void
.end method

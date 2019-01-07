.class final Lhlt$4;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlt;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lhlt$a;

.field final synthetic e:Lhlt;


# direct methods
.method constructor <init>(Lhlt;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V
    .locals 0
    .param p1, "this$0"    # Lhlt;

    .prologue
    .line 897
    iput-object p1, p0, Lhlt$4;->e:Lhlt;

    iput-object p2, p0, Lhlt$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lhlt$4;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lhlt$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lhlt$4;->d:Lhlt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 900
    iget-object v0, p0, Lhlt$4;->e:Lhlt;

    iget-object v1, p0, Lhlt$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lhlt$4;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lhlt$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lhlt$4;->d:Lhlt$a;

    .line 1150
    invoke-virtual {v0, v1, v2, v3, v4}, Lhlt;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    .line 901
    return-void
.end method

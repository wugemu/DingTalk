.class final Lfxa$10$1$1;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Lfxa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa$10$1;->a(Lckl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxa$10$1;


# direct methods
.method constructor <init>(Lfxa$10$1;)V
    .locals 0
    .param p1, "this$2"    # Lfxa$10$1;

    .prologue
    .line 460
    iput-object p1, p0, Lfxa$10$1$1;->a:Lfxa$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 2
    .param p1, "nick"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 463
    iget-object v0, p0, Lfxa$10$1$1;->a:Lfxa$10$1;

    iget-object v0, v0, Lfxa$10$1;->a:Lfxa$10;

    iget-object v0, v0, Lfxa$10;->e:Lfxa;

    iget-object v1, p0, Lfxa$10$1$1;->a:Lfxa$10$1;

    iget-object v1, v1, Lfxa$10$1;->a:Lfxa$10;

    iget-object v1, v1, Lfxa$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1}, Lfxa;->a(Lfxa;Lcom/alibaba/wukong/Callback;Lckl;)V

    .line 464
    return-void
.end method
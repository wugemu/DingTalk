.class final Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;
.super Ljava/lang/Object;
.source "AbstractAppInstance.java"

# interfaces
.implements Ljrz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/rt/app/AbstractAppInstance;->e()Ljrz$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/rt/app/AbstractAppInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const/4 v1, 0x0

    const-string/jumbo v2, "app:launch"

    invoke-static {v0, v1, v2, p1}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const-string/jumbo v1, "page:load"

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const-string/jumbo v1, "app:show"

    invoke-static {v0, v2, v1, v2}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const-string/jumbo v1, "page:ready"

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const-string/jumbo v1, "page:show"

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const-string/jumbo v1, "page:hide"

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lcom/taobao/windmill/rt/app/AbstractAppInstance$1;->a:Lcom/taobao/windmill/rt/app/AbstractAppInstance;

    const-string/jumbo v1, "page:unload"

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->a(Lcom/taobao/windmill/rt/app/AbstractAppInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

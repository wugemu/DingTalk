.class public Lcom/mybank/android/phone/common/component/custom/CustomActivity;
.super Landroid/app/Activity;
.source "CustomActivity.java"

# interfaces
.implements Ljfe;
.implements Ljff;


# instance fields
.field private a:Z

.field private final b:Ljfg;

.field private c:Z

.field protected d:Ljfs;

.field protected e:Llhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llhg",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->a:Z

    .line 34
    new-instance v0, Ljfg;

    invoke-direct {v0}, Ljfg;-><init>()V

    iput-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->b:Ljfg;

    .line 206
    new-instance v0, Lcom/mybank/android/phone/common/component/custom/CustomActivity$4;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/component/custom/CustomActivity$4;-><init>(Lcom/mybank/android/phone/common/component/custom/CustomActivity;)V

    iput-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->e:Llhg;

    .line 219
    iput-boolean v1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->c:Z

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Llgs;
    .locals 7
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameter"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Llgs",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 162
    iget-object v1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->b:Ljfg;

    .line 11026
    new-instance v0, Ljfg$1;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljfg$1;-><init>(Ljfg;Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Object;)V

    invoke-static {v0}, Llgs;->a(Llgs$a;)Llgs;

    move-result-object v0

    .line 11031
    invoke-static {}, Llkt;->a()Llgv;

    move-result-object v1

    .line 11405
    iget-object v2, v0, Llgs;->a:Llgs$a;

    instance-of v2, v2, Lrx/internal/operators/OnSubscribeCreate;

    if-nez v2, :cond_0

    .line 11439
    :goto_0
    instance-of v2, v0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v2, :cond_1

    .line 11440
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {v0, v1}, Lrx/internal/util/ScalarSynchronousObservable;->b(Llgv;)Llgs;

    move-result-object v0

    .line 12037
    :goto_1
    invoke-static {}, Llha;->a()Llha;

    move-result-object v1

    invoke-virtual {v1}, Llha;->b()Llhb;

    invoke-static {}, Llhb;->b()Llgv;

    .line 12039
    sget-object v1, Llhc$a;->a:Llgv;

    .line 163
    invoke-virtual {v0, v1}, Llgs;->a(Llgv;)Llgs;

    move-result-object v0

    new-instance v1, Lcom/mybank/android/phone/common/component/custom/CustomActivity$3;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/component/custom/CustomActivity$3;-><init>(Lcom/mybank/android/phone/common/component/custom/CustomActivity;)V

    .line 12950
    new-instance v2, Llht;

    invoke-direct {v2, v1}, Llht;-><init>(Llhf;)V

    invoke-virtual {v0, v2}, Llgs;->a(Llgs$b;)Llgs;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/mybank/android/phone/common/component/custom/CustomActivity$2;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/component/custom/CustomActivity$2;-><init>(Lcom/mybank/android/phone/common/component/custom/CustomActivity;)V

    .line 13794
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v2

    .line 13795
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v3

    .line 13796
    new-instance v4, Llii;

    invoke-direct {v4, v2, v3, v1}, Llii;-><init>(Llhg;Llhg;Llhf;)V

    .line 13798
    new-instance v1, Llho;

    invoke-direct {v1, v0, v4}, Llho;-><init>(Llgs;Llgt;)V

    invoke-static {v1}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/mybank/android/phone/common/component/custom/CustomActivity$1;

    invoke-direct {v1, p0}, Lcom/mybank/android/phone/common/component/custom/CustomActivity$1;-><init>(Lcom/mybank/android/phone/common/component/custom/CustomActivity;)V

    .line 13871
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v2

    .line 13872
    invoke-static {}, Lrx/functions/Actions;->a()Lrx/functions/Actions$b;

    move-result-object v3

    .line 13873
    new-instance v4, Llii;

    invoke-direct {v4, v2, v1, v3}, Llii;-><init>(Llhg;Llhg;Llhf;)V

    .line 13875
    new-instance v1, Llho;

    invoke-direct {v1, v0, v4}, Llho;-><init>(Llgs;Llgt;)V

    invoke-static {v1}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v6

    .line 183
    .local v6, "ret":Llgs;, "Llgs<Ljava/lang/Object;>;"
    return-object v6

    .line 11405
    .end local v6    # "ret":Llgs;, "Llgs<Ljava/lang/Object;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 11442
    :cond_1
    new-instance v2, Llhv;

    invoke-direct {v2, v0, v1, v4}, Llhv;-><init>(Llgs;Llgv;Z)V

    invoke-static {v2}, Llgs;->b(Llgs$a;)Llgs;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    sget v1, Ljfw$d;->tip:I

    invoke-virtual {p0, v1}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ljfw$d;->sure:I

    .line 63
    invoke-virtual {p0, v2}, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 62
    invoke-virtual/range {v0 .. v6}, Ljfs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljfs;->a(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ok"    # Ljava/lang/String;
    .param p4, "okClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "cancel"    # Ljava/lang/String;
    .param p6, "cancelClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljfs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    return-void
.end method

.method protected final a(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->a:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    const-string/jumbo v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Ljfs;->a(Ljava/lang/String;)V

    .line 98
    :goto_1
    iput-boolean p1, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->a:Z

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    invoke-virtual {v0}, Ljfs;->a()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljfs;->a(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Ljfs;

    invoke-direct {v0, p0}, Ljfs;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->d:Ljfs;

    invoke-virtual {v0}, Ljfs;->a()V

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mybank/android/phone/common/component/custom/CustomActivity;->c:Z

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    return-void
.end method

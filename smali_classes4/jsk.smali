.class public final Ljsk;
.super Ljrp;
.source "WMLAppBridgeInvokerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljrp",
        "<",
        "Ljsf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljsf;

.field private b:Ljava/lang/String;

.field private c:Ljsj;

.field private d:Ljrx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljsm;


# direct methods
.method public constructor <init>(Ljsf;Ljava/lang/String;)V
    .locals 3
    .param p1, "appInstance"    # Ljsf;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljrp;-><init>()V

    .line 26
    iput-object p1, p0, Ljsk;->a:Ljsf;

    .line 27
    iput-object p2, p0, Ljsk;->b:Ljava/lang/String;

    .line 28
    new-instance v1, Ljsj;

    invoke-direct {v1, p1, p2}, Ljsj;-><init>(Ljrz;Ljava/lang/String;)V

    iput-object v1, p0, Ljsk;->c:Ljsj;

    .line 29
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v1

    sget-object v2, Lcom/taobao/windmill/rt/runtime/WMLAppType;->MIXED:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    .line 1098
    iget-object v1, v1, Ljsb;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsa;

    .line 30
    .local v0, "factory":Ljsa;
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Ljsa;->a()Ljrx;

    move-result-object v1

    iput-object v1, p0, Ljsk;->d:Ljrx;

    .line 33
    :cond_0
    new-instance v1, Ljsm;

    invoke-direct {v1, p1, p2}, Ljsm;-><init>(Ljrz;Ljava/lang/String;)V

    iput-object v1, p0, Ljsk;->e:Ljsm;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "bridge"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :cond_1
    new-instance v0, Ljrm;

    invoke-direct {v0}, Ljrm;-><init>()V

    .line 54
    .local v0, "invokeParams":Ljrm;
    iput-object p1, v0, Ljrm;->b:Ljava/lang/String;

    .line 55
    iput-object p2, v0, Ljrm;->c:Ljava/lang/String;

    .line 56
    iget-object v2, p0, Ljsk;->b:Ljava/lang/String;

    iput-object v2, v0, Ljrm;->a:Ljava/lang/String;

    .line 57
    iput-object p4, v0, Ljrm;->e:Ljava/lang/String;

    .line 58
    iput-object p3, v0, Ljrm;->d:Ljava/lang/String;

    .line 60
    const-string/jumbo v2, "AppWorker"

    iget-object v3, v0, Ljrm;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Ljsk;->a:Ljsf;

    invoke-virtual {v2, v0}, Ljsf;->a(Ljrm;)V

    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    .line 66
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p1}, Ljrq;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    iget-object v2, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v2, v0}, Ljsj;->a(Ljrm;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->hasModule(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    iget-object v2, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v2, v0}, Ljsm;->a(Ljrm;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_4
    iget-object v2, p0, Ljsk;->d:Ljrx;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Ljsk;->d:Ljrx;

    invoke-interface {v2, v0}, Ljrx;->a(Ljrm;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0}, Ljsj;->a()V

    .line 97
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0}, Ljrx;->a()V

    .line 100
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0}, Ljsm;->a()V

    .line 101
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0, p1, p2, p3}, Ljsj;->a(IILandroid/content/Intent;)V

    .line 142
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0, p1, p2, p3}, Ljrx;->a(IILandroid/content/Intent;)V

    .line 145
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0, p1, p2, p3}, Ljsm;->a(IILandroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public final a(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 150
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0, p1, p2, p3}, Ljsj;->a(I[Ljava/lang/String;[I)V

    .line 151
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0, p1, p2, p3}, Ljrx;->a(I[Ljava/lang/String;[I)V

    .line 154
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0, p1, p2, p3}, Ljsm;->a(I[Ljava/lang/String;[I)V

    .line 155
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0}, Ljsj;->b()V

    .line 106
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0}, Ljrx;->b()V

    .line 109
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0}, Ljsm;->b()V

    .line 110
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0}, Ljsj;->c()V

    .line 115
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0}, Ljrx;->c()V

    .line 118
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0}, Ljsm;->c()V

    .line 119
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0}, Ljsj;->d()V

    .line 124
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0}, Ljrx;->d()V

    .line 127
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0}, Ljsm;->d()V

    .line 128
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0}, Ljsj;->e()V

    .line 133
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0}, Ljrx;->e()V

    .line 136
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0}, Ljsm;->e()V

    .line 137
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ljsk;->c:Ljsj;

    invoke-virtual {v0}, Ljsj;->f()V

    .line 79
    iget-object v0, p0, Ljsk;->d:Ljrx;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Ljsk;->d:Ljrx;

    invoke-interface {v0}, Ljrx;->f()V

    .line 82
    :cond_0
    iget-object v0, p0, Ljsk;->e:Ljsm;

    invoke-virtual {v0}, Ljsm;->f()V

    .line 83
    return-void
.end method

.method protected final bridge synthetic g()Ljrz;
    .locals 1

    .prologue
    .line 17
    .line 2038
    iget-object v0, p0, Ljsk;->a:Ljsf;

    .line 17
    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ljsk;->b:Ljava/lang/String;

    return-object v0
.end method

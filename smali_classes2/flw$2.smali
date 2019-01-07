.class final Lflw$2;
.super Ljava/lang/Object;
.source "MatchContactUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflw;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lflw$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 220
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->c()I

    move-result v3

    .line 221
    .local v3, "localContactTotal":I
    const-string/jumbo v4, "localContactTotal=%d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lfxo;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    if-gtz v3, :cond_2

    .line 224
    invoke-static {}, Lflw;->a()Z

    move-result v2

    .line 225
    .local v2, "isMatchContact":Z
    const-string/jumbo v4, "isMatchContact=%b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lfxo;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    if-eqz v2, :cond_1

    .line 227
    new-instance v1, Lflw$2$1;

    invoke-direct {v1, p0}, Lflw$2$1;-><init>(Lflw$2;)V

    .line 245
    .local v1, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v4, p0, Lflw$2;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v6, p0, Lflw$2;->a:Landroid/app/Activity;

    invoke-interface {v4, v1, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v1, Lcma;

    .line 248
    .restart local v1    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_0
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v4

    invoke-interface {v4, v1}, Lezy;->a(Lcma;)V

    .line 287
    .end local v1    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v2    # "isMatchContact":Z
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    invoke-static {v7, v7}, Lflw;->a(ZZ)V

    .line 257
    new-instance v0, Lflw$2$2;

    invoke-direct {v0, p0}, Lflw$2$2;-><init>(Lflw$2;)V

    .line 282
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lflw$2;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 283
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lcma;

    iget-object v6, p0, Lflw$2;->a:Landroid/app/Activity;

    invoke-interface {v4, v0, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 285
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_3
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v4

    invoke-interface {v4, v0}, Lezy;->b(Lcma;)V

    goto :goto_0
.end method

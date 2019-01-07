.class final Lfhb$4;
.super Ljava/lang/Object;
.source "ContactItemViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

.field final synthetic b:Z

.field final synthetic c:Lfhb;


# direct methods
.method constructor <init>(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V
    .locals 0
    .param p1, "this$0"    # Lfhb;

    .prologue
    .line 156
    iput-object p1, p0, Lfhb$4;->c:Lfhb;

    iput-object p2, p0, Lfhb$4;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    iput-boolean p3, p0, Lfhb$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 159
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->d()Lfmo;

    move-result-object v2

    iget-object v3, p0, Lfhb$4;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->getUid()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lfmo;->a(J)I

    .line 160
    iget-boolean v2, p0, Lfhb$4;->b:Z

    if-eqz v2, :cond_0

    .line 161
    new-instance v0, Lfhb$4$1;

    invoke-direct {v0, p0}, Lfhb$4$1;-><init>(Lfhb$4;)V

    .line 180
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v2

    iget-object v3, p0, Lfhb$4;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/homepage/CommonContactItem;->getUid()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lfln;->b(JLcma;)V

    .line 185
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.common_contact_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lfhb$4;->c:Lfhb;

    invoke-static {v2}, Lfhb;->a(Lfhb;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

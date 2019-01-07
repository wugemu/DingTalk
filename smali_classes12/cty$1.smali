.class final Lcty$1;
.super Ljava/lang/Object;
.source "AlipayRedPacketsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcty;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcty;


# direct methods
.method constructor <init>(Lcty;Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcty;

    .prologue
    .line 67
    iput-object p1, p0, Lcty$1;->c:Lcty;

    iput-object p2, p0, Lcty$1;->a:Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    iput-object p3, p0, Lcty$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcty$1;->a:Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->action:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcty$1;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 73
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 74
    const/16 v4, 0x40

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "rs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    iget-object v4, p0, Lcty$1;->b:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-object v4, p0, Lcty$1;->c:Lcty;

    iget-object v5, p0, Lcty$1;->b:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcty;->a(Lcty;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

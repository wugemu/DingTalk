.class final Lewl$2;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(Ljava/lang/String;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lewl;


# direct methods
.method constructor <init>(Lewl;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 701
    iput-object p1, p0, Lewl$2;->d:Lewl;

    iput-boolean p2, p0, Lewl$2;->a:Z

    iput-object p3, p0, Lewl$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lewl$2;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 705
    const/4 v6, 0x0

    .line 706
    .local v6, "website":Ljava/lang/String;
    const/4 v8, 0x0

    .line 708
    .local v8, "hasPhoto":Z
    :try_start_0
    iget-boolean v0, p0, Lewl$2;->a:Z

    if-nez v0, :cond_0

    .line 709
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_conference_dingtalk_web_homepage:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 710
    const/4 v8, 0x1

    .line 712
    :cond_0
    iget-object v0, p0, Lewl$2;->d:Lewl;

    iget-object v1, p0, Lewl$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lewl$2;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v8}, Lewl;->a(Lewl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v9

    .line 714
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

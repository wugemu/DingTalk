.class final Lejp$5$1;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejp$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lejp$5;


# direct methods
.method constructor <init>(Lejp$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lejp$5;

    .prologue
    .line 142
    iput-object p1, p0, Lejp$5$1;->b:Lejp$5;

    iput-object p2, p0, Lejp$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lejp$5$1;->b:Lejp$5;

    iget-object v1, v0, Lejp$5;->c:Lejp;

    iget-object v0, p0, Lejp$5$1;->b:Lejp$5;

    iget-object v2, v0, Lejp$5;->a:Landroid/app/Activity;

    iget-object v0, p0, Lejp$5$1;->a:Ljava/util/List;

    .line 1209
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 1213
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0918c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2205
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 1214
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09033d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2213
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->b:Ljava/lang/String;

    .line 1215
    new-instance v4, Lejp$9;

    invoke-direct {v4, v1, v3}, Lejp$9;-><init>(Lejp;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V

    .line 2245
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1223
    if-eqz v0, :cond_2

    .line 1226
    new-instance v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const-string/jumbo v7, ""

    iget-object v8, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    sget-object v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 2585
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 1228
    new-instance v7, Lejp$10;

    invoke-direct {v7, v1, v2, v0}, Lejp$10;-><init>(Lejp;Landroid/app/Activity;Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    .line 3581
    iput-object v7, v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 1236
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1238
    :cond_3
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 1239
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    goto :goto_0
.end method

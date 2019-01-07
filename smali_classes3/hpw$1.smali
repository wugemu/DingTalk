.class final Lhpw$1;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "DakaPopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpw;->a(IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lhkz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhkz;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:J

.field final synthetic h:I

.field final synthetic i:Lhpw;


# direct methods
.method constructor <init>(Lhpw;Ljava/lang/String;Lhkz;IILjava/lang/String;Ljava/util/List;JI)V
    .locals 0
    .param p1, "this$0"    # Lhpw;

    .prologue
    .line 89
    iput-object p1, p0, Lhpw$1;->i:Lhpw;

    iput-object p2, p0, Lhpw$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lhpw$1;->b:Lhkz;

    iput p4, p0, Lhpw$1;->c:I

    iput p5, p0, Lhpw$1;->d:I

    iput-object p6, p0, Lhpw$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lhpw$1;->f:Ljava/util/List;

    iput-wide p8, p0, Lhpw$1;->g:J

    iput p10, p0, Lhpw$1;->h:I

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 99
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-object v7

    .line 103
    :cond_0
    if-eqz p2, :cond_1

    instance-of v1, p2, Lhpv;

    if-nez v1, :cond_2

    .line 104
    :cond_1
    new-instance p2, Lhpv;

    .end local p2    # "ddPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    invoke-direct {p2}, Lhpv;-><init>()V

    .line 107
    .restart local p2    # "ddPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_2
    iget-object v4, p0, Lhpw$1;->a:Ljava/lang/String;

    .line 108
    .local v4, "realTitle":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lhdn$k;->dt_oa_attend_checkin_fail_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_3
    iget-object v1, p0, Lhpw$1;->b:Lhkz;

    if-nez v1, :cond_6

    .line 113
    .local v7, "iconUrl":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_2
    move-object v0, p2

    .line 117
    check-cast v0, Lhpv;

    .line 118
    .local v0, "dakaPopupWindow":Lhpv;
    iget v2, p0, Lhpw$1;->c:I

    iget v3, p0, Lhpw$1;->d:I

    iget-object v5, p0, Lhpw$1;->e:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v8, p0, Lhpw$1;->f:Ljava/util/List;

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lhpv;->a(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;)V

    .line 119
    iget-object v1, p0, Lhpw$1;->f:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lhpw$1;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    :cond_4
    new-instance v1, Lhpw$1$1;

    invoke-direct {v1, p0}, Lhpw$1$1;-><init>(Lhpw$1;)V

    .line 1096
    iput-object v1, v0, Lhpv;->c:Landroid/view/View$OnClickListener;

    .line 170
    :cond_5
    :goto_3
    new-instance v1, Lhpw$1$3;

    invoke-direct {v1, p0}, Lhpw$1$3;-><init>(Lhpw$1;)V

    .line 2100
    iput-object v1, v0, Lhpv;->d:Landroid/view/View$OnClickListener;

    move-object v7, p2

    .line 190
    goto :goto_0

    .line 111
    .end local v0    # "dakaPopupWindow":Lhpv;
    .end local v7    # "iconUrl":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lhpw$1;->b:Lhkz;

    iget-object v7, v1, Lhkz;->k:Ljava/lang/String;

    goto :goto_1

    .line 143
    .restart local v0    # "dakaPopupWindow":Lhpv;
    .restart local v7    # "iconUrl":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lhpw$1;->b:Lhkz;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lhpw$1;->b:Lhkz;

    iget v1, v1, Lhkz;->b:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lhpw$1;->b:Lhkz;

    iget-wide v2, v1, Lhkz;->l:J

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_5

    .line 144
    new-instance v1, Lhpw$1$2;

    invoke-direct {v1, p0}, Lhpw$1$2;-><init>(Lhpw$1;)V

    .line 1104
    iput-object v1, v0, Lhpv;->e:Landroid/view/View$OnClickListener;

    goto :goto_3

    .end local v0    # "dakaPopupWindow":Lhpv;
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 198
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "ddPopupWindowShowObject"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

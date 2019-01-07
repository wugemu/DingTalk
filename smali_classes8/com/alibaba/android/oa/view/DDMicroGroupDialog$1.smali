.class final Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;
.super Lcqu;
.source "DDMicroGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/DDMicroGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqu",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;
    .param p2, "x0"    # Landroid/content/Context;
    .param p4, "x2"    # I

    .prologue
    .line 129
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;->e:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-direct {p0, p2, p3, p4}, Lcqu;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcre;Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 129
    check-cast p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;->e:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;->e:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;->e:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    iget-wide v0, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v2, -0x4d

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1139
    sget v0, Ledz$f;->oa_entry_title:I

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcre;->a(ILjava/lang/String;)Lcre;

    .line 1140
    sget v0, Ledz$f;->oa_entry_icon:I

    invoke-virtual {p1, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1141
    if-eqz v0, :cond_1

    .line 1142
    sget v0, Ledz$f;->oa_entry_icon:I

    invoke-virtual {p1, v0, v4, v4, v5}, Lcre;->a(ILjava/lang/String;Landroid/widget/AbsListView;I)Lcre;

    .line 1163
    :cond_1
    :goto_0
    iget v0, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->securityTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1164
    sget v0, Ledz$f;->oa_entry_security_icon:I

    invoke-virtual {p1, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$1;->e:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->a(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;Lcre;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 129
    return-void

    .line 1146
    :cond_2
    :try_start_0
    sget v0, Ledz$f;->oa_entry_title:I

    iget-object v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcre;->a(ILjava/lang/String;)Lcre;

    .line 1147
    iget-object v0, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v1, v0, v2, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1150
    sget v0, Ledz$f;->oa_entry_icon:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {p1, v0, v2, v3, v4}, Lcre;->a(ILjava/lang/String;Landroid/widget/AbsListView;I)Lcre;

    .line 1151
    sget v0, Ledz$f;->oa_entry_icon:I

    invoke-virtual {p1, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1152
    if-eqz v0, :cond_3

    .line 1153
    sget v2, Ledz$e;->oa_entry_icon_default:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1155
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1156
    sget v0, Ledz$f;->oa_entry_icon:I

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcre;->a(ILjava/lang/String;Landroid/widget/AbsListView;I)Lcre;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1166
    :cond_4
    sget v0, Ledz$f;->oa_entry_security_icon:I

    invoke-virtual {p1, v0}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

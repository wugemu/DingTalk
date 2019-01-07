.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1014
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;

    .line 2055
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2058
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 2060
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2061
    :cond_0
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid result"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :cond_1
    :goto_0
    return-void

    .line 2064
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->causeMap:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/util/Map;)V

    .line 2065
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V

    .line 2066
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2067
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->callTypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 2068
    if-gt v0, v4, :cond_4

    .line 2069
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->preventList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->preventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2070
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->preventList:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V

    invoke-virtual {v0, v1, v2}, Lewl;->a(Ljava/util/List;Lewl$b;)V

    goto :goto_0

    .line 2078
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->cause:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->cause:Ljava/lang/String;

    invoke-static {v0, v5, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->cause:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Z)V

    .line 2084
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->preventList:Ljava/util/List;

    invoke-virtual {v0, v1, v5}, Lewl;->a(Ljava/util/List;Lewl$b;)V

    goto :goto_0

    .line 2088
    :cond_5
    if-gt v0, v4, :cond_8

    .line 2089
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->netStatusMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 2090
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->netStatusMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2091
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2093
    :cond_6
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->netStatusMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->netStatusMap:Ljava/util/Map;

    .line 2094
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2095
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->netStatusMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->lowVerList:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/Map;Ljava/util/List;)V

    .line 2097
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->stateCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;->calleeNumber:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2105
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 1017
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Get call type fail "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    .line 1051
    :cond_1
    :goto_0
    return-void

    .line 1025
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1027
    const/4 v1, 0x0

    .line 1029
    .local v1, "errCode":I
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1030
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1035
    :cond_3
    :goto_1
    const/16 v2, 0x198

    if-ne v1, v2, :cond_5

    .line 1037
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->v(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    .line 1038
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->w(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)I

    move-result v2

    if-gt v2, v6, :cond_4

    .line 1039
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->a:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1041
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    goto :goto_0

    .line 1044
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V

    .line 1046
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v2, p1, p2}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

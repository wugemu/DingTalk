.class final Lbbt$8;
.super Ljava/lang/Object;
.source "DingFloatWindowCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Lbcf;

.field final synthetic c:Lbbt;


# direct methods
.method constructor <init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbcf;)V
    .locals 0
    .param p1, "this$0"    # Lbbt;

    .prologue
    .line 269
    iput-object p1, p0, Lbbt$8;->c:Lbbt;

    iput-object p2, p0, Lbbt$8;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p3, p0, Lbbt$8;->b:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 272
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 273
    .local v1, "floatCommonView":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;
    iget-object v3, p0, Lbbt$8;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    .line 281
    :cond_0
    :goto_0
    new-instance v0, Lcjs$a;

    const/4 v3, 0x7

    iget-object v4, p0, Lbbt$8;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 282
    .local v0, "builder":Lcjs$a;
    new-instance v3, Lbbt$8$1;

    invoke-direct {v3, p0}, Lbbt$8$1;-><init>(Lbbt$8;)V

    .line 1081
    iput-object v3, v0, Lcjs$a;->a:Lcjs$b;

    .line 303
    iget-object v4, p0, Lbbt$8;->b:Lbcf;

    iget-object v5, p0, Lbbt$8;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1216
    if-eqz v4, :cond_1

    if-nez v5, :cond_4

    .line 6086
    :cond_1
    :goto_1
    iput-object v2, v0, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 305
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v0}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    .line 306
    return-void

    .line 275
    .end local v0    # "builder":Lcjs$a;
    :cond_2
    iget-object v3, p0, Lbbt$8;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v3, p0, Lbbt$8;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;->setSubTitleMaxLines(I)V

    goto :goto_0

    .line 1219
    .restart local v0    # "builder":Lcjs$a;
    :cond_4
    iget-object v3, v4, Lbcf;->a:Ljava/lang/Integer;

    .line 2033
    invoke-static {v3, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 1220
    if-ne v6, v9, :cond_5

    invoke-static {v5}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1223
    :cond_5
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 1225
    invoke-static {v3, v5}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2304
    if-eqz v4, :cond_6

    iget-object v7, v4, Lbcf;->f:Ljava/util/List;

    if-eqz v7, :cond_6

    iget-object v7, v4, Lbcf;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2305
    :cond_6
    invoke-static {v3, v5, v2}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    .line 1229
    :goto_2
    new-instance v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 1230
    invoke-static {v7}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 3043
    iput-object v2, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 1233
    if-eq v6, v11, :cond_a

    if-eq v6, v10, :cond_a

    const/4 v2, 0x7

    if-eq v6, v2, :cond_a

    const/16 v2, 0x8

    if-eq v6, v2, :cond_a

    .line 1237
    iget-object v2, v4, Lbcf;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v9, :cond_7

    .line 1238
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v6, "[PopupDisplayAsynObjectBuilder] buildGeneralRemindDisplayObject unknown type display, type:"

    aput-object v6, v2, v8

    iget-object v6, v4, Lbcf;->a:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1240
    :cond_7
    iget-object v2, v4, Lbcf;->d:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, v4, Lbcf;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v4, Lbcf;->d:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1241
    new-instance v6, Landroid/text/SpannableString;

    iget-object v2, v4, Lbcf;->d:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Lbkv;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 3123
    iput-object v2, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 1285
    :cond_8
    :goto_3
    new-instance v2, Landroid/text/SpannableString;

    invoke-static {v5}, Lbkv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5131
    iput-object v2, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 1287
    new-instance v2, Lbkv$19;

    invoke-direct {v2, v4, v5}, Lbkv$19;-><init>(Lbcf;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 5155
    iput-object v2, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    move-object v2, v3

    .line 1300
    goto/16 :goto_1

    .line 2307
    :cond_9
    iget-object v2, v4, Lbcf;->f:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lbkv;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V

    goto :goto_2

    .line 1244
    :cond_a
    new-instance v2, Lcrm;

    invoke-direct {v2}, Lcrm;-><init>()V

    .line 4123
    iput-object v2, v7, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->a:Lcrm;

    .line 1246
    new-instance v8, Lbkv$18;

    invoke-direct {v8, v5, v6}, Lbkv$18;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    .line 5040
    iput-object v8, v2, Lcrm;->c:Lcrl;

    goto :goto_3
.end method

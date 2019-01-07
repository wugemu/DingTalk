.class public final Leam;
.super Ljava/lang/Object;
.source "PushTaskRemindFloatObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;)Lcrm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcrm",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcrm;

    invoke-direct {v0}, Lcrm;-><init>()V

    .line 6024
    .local v0, "asyncLoadHolder":Lcrm;, "Lcrm<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrm;->a:Z

    .line 6032
    iput-object p0, v0, Lcrm;->b:Ljava/lang/Object;

    .line 139
    return-object v0
.end method

.method static a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Ldqs;)V
    .locals 5
    .param p0, "popObject"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .param p1, "model"    # Ldqs;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;-><init>()V

    .line 55
    .local v1, "header":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;
    invoke-static {v1}, Leam;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 1035
    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->a:Lcrm;

    .line 56
    sget v2, Lctk$i;->icon_explore:I

    .line 1075
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 57
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$c;->text_color_blue:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 1083
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 60
    :try_start_0
    iget-object v2, p1, Ldqs;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p1, Ldqs;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1091
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 63
    :cond_1
    iget-object v2, p1, Ldqs;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$c;->text_color_blue:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    .line 1099
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p1, Ldqs;->c:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, p1, Ldqs;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2099
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    goto :goto_0

    .line 70
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Ldqs;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 3099
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static b(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;Ldqs;)V
    .locals 7
    .param p0, "popObject"    # Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;
    .param p1, "model"    # Ldqs;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v4, p1, Ldqs;->f:Ljava/util/List;

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 101
    .local v3, "footer":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;
    invoke-static {v3}, Leam;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 4051
    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;>;"
    iget-object v4, p1, Ldqs;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldqj;

    .line 105
    .local v2, "alert":Ldqj;
    if-eqz v2, :cond_2

    .line 109
    new-instance v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 110
    .local v0, "action":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
    iget-object v5, v2, Ldqj;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 111
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, v2, Ldqj;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4191
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 113
    :cond_3
    new-instance v5, Leam$1;

    invoke-direct {v5, v2}, Leam$1;-><init>(Ldqj;)V

    .line 4199
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 125
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5168
    .end local v0    # "action":Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;
    .end local v2    # "alert":Ldqj;
    :cond_4
    iput-object v1, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    goto :goto_0
.end method

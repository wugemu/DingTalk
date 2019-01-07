.class public Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;
.super Ljava/lang/Object;
.source "SmileDetectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;
    }
.end annotation


# instance fields
.field public a:Lhyz;

.field public b:Landroid/content/Context;

.field public c:Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter$a;

.field public volatile d:Z

.field public e:Z

.field private f:Lgtc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->d:Z

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->e:Z

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private static a(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 204
    packed-switch p0, :pswitch_data_0

    .line 236
    sget v0, Lgrv$f;->icon_num_zero:I

    .line 239
    .local v0, "resId":I
    :goto_0
    return v0

    .line 206
    .end local v0    # "resId":I
    :pswitch_0
    sget v0, Lgrv$f;->icon_num_zero:I

    .line 207
    .restart local v0    # "resId":I
    goto :goto_0

    .line 209
    .end local v0    # "resId":I
    :pswitch_1
    sget v0, Lgrv$f;->icon_num_one:I

    .line 210
    .restart local v0    # "resId":I
    goto :goto_0

    .line 212
    .end local v0    # "resId":I
    :pswitch_2
    sget v0, Lgrv$f;->icon_num_two:I

    .line 213
    .restart local v0    # "resId":I
    goto :goto_0

    .line 215
    .end local v0    # "resId":I
    :pswitch_3
    sget v0, Lgrv$f;->icon_num_three:I

    .line 216
    .restart local v0    # "resId":I
    goto :goto_0

    .line 218
    .end local v0    # "resId":I
    :pswitch_4
    sget v0, Lgrv$f;->icon_num_four:I

    .line 219
    .restart local v0    # "resId":I
    goto :goto_0

    .line 221
    .end local v0    # "resId":I
    :pswitch_5
    sget v0, Lgrv$f;->icon_num_five:I

    .line 222
    .restart local v0    # "resId":I
    goto :goto_0

    .line 224
    .end local v0    # "resId":I
    :pswitch_6
    sget v0, Lgrv$f;->icon_num_six:I

    .line 225
    .restart local v0    # "resId":I
    goto :goto_0

    .line 227
    .end local v0    # "resId":I
    :pswitch_7
    sget v0, Lgrv$f;->icon_num_seven:I

    .line 228
    .restart local v0    # "resId":I
    goto :goto_0

    .line 230
    .end local v0    # "resId":I
    :pswitch_8
    sget v0, Lgrv$f;->icon_num_eight:I

    .line 231
    .restart local v0    # "resId":I
    goto :goto_0

    .line 233
    .end local v0    # "resId":I
    :pswitch_9
    sget v0, Lgrv$f;->icon_num_nine:I

    .line 234
    .restart local v0    # "resId":I
    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;I)V
    .locals 4
    .param p0, "view1"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p1, "view2"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p2, "view3"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .param p3, "score"    # I

    .prologue
    const/4 v3, 0x0

    .line 179
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-gez p3, :cond_2

    .line 183
    const/4 p3, 0x0

    .line 185
    :cond_2
    const/16 v2, 0xa

    if-ge p3, v2, :cond_3

    .line 186
    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 187
    invoke-static {p3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 188
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_3
    const/16 v2, 0x64

    if-ge p3, v2, :cond_4

    .line 190
    div-int/lit8 v2, p3, 0xa

    rem-int/lit8 v0, v2, 0xa

    .line 191
    .local v0, "num1":I
    rem-int/lit8 v1, p3, 0xa

    .line 192
    .local v1, "num2":I
    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 193
    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 194
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    .end local v0    # "num1":I
    .end local v1    # "num2":I
    :cond_4
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 197
    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 198
    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lhyz;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->f:Lgtc;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lgtc;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lgtc;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->f:Lgtc;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->f:Lgtc;

    invoke-virtual {v0}, Lgtc;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 63
    :goto_0
    monitor-exit p0

    return-object v0

    .line 52
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->f:Lgtc;

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lgtc;->a:J

    .line 53
    invoke-static {p1}, Lgsp;->a(Landroid/content/Context;)Lhyz;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    if-nez v0, :cond_3

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->e:Z

    .line 63
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->a:Lhyz;

    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    const-string/jumbo v0, "facebox"

    const-string/jumbo v1, "SmileDetectPresenter"

    const-string/jumbo v2, "[Face] Stop smile detect"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/SmileDetectPresenter;->d:Z

    .line 88
    return-void
.end method

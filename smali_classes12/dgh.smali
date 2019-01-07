.class public final Ldgh;
.super Ljava/lang/Object;
.source "WaterMarkPresenter.java"

# interfaces
.implements Ldcx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldgh$b;,
        Ldgh$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldgh$a;Ldgh$b;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Ldgh$a;
    .param p3, "view"    # Ldgh$b;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    const-string/jumbo v0, "context == null"

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Ldgh;->b:Landroid/content/Context;

    .line 44
    const-string/jumbo v0, "model == null"

    invoke-static {p2, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgh$a;

    invoke-interface {v0}, Ldgh$a;->a()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iput-object v0, p0, Ldgh;->c:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "mConversationObject = null"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v0, "view == null"

    invoke-static {p3, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgh$b;

    invoke-interface {v0}, Ldgh$b;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldgh;->d:Landroid/view/View;

    const-string/jumbo v1, "mIvWaterMark = null"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldgh;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldgh;->a:Z

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "wd"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 53
    iget-boolean v2, p0, Ldgh;->a:Z

    if-nez v2, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 57
    :cond_0
    const-wide/16 v0, 0x0

    .line 58
    .local v0, "orgId":J
    iget-object v2, p0, Ldgh;->c:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "id"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Ldgh;->c:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "id"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1067
    :cond_1
    :goto_1
    iget-object v2, p0, Ldgh;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 1069
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    .line 1070
    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupWaterMark:Z

    if-eqz v2, :cond_4

    .line 1071
    const/16 v2, 0x10

    invoke-static {v2}, Lcms;->b(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1072
    iget-object v2, p0, Ldgh;->b:Landroid/content/Context;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ldgh;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$c;->chat_bg_water_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v6, p0, Ldgh;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$c;->chat_bg_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1073
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1074
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1075
    iget-object v2, p0, Ldgh;->d:Landroid/view/View;

    invoke-static {v2, v3}, Ldgh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Ldgh;->c:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "orgId"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Ldgh;->c:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "orgId"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 1077
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    iget-object v3, p0, Ldgh;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 1078
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    .line 1217
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 1079
    iget-object v3, p0, Ldgh;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$c;->chat_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2146
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    .line 1081
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 1082
    iget-object v3, p0, Ldgh;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lctk$c;->chat_bg_water_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3142
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 1083
    iget-object v3, p0, Ldgh;->d:Landroid/view/View;

    invoke-static {v3, v2}, Ldgh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1086
    :cond_4
    iget-object v2, p0, Ldgh;->d:Landroid/view/View;

    invoke-static {v2, v4}, Ldgh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1089
    :cond_5
    iget-object v2, p0, Ldgh;->d:Landroid/view/View;

    invoke-static {v2, v4}, Ldgh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.class public Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;
.super Landroid/app/Activity;
.source "DummyWukongTesting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;,
        Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/regex/Pattern;

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string/jumbo v0, "(\u6210\u529f|\u5931\u8d25)\u3010(.*)\u3011"

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "(\u6210\u529f|\u5931\u8d25)\u3010(.*)\u3011"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->b:Ljava/util/regex/Pattern;

    .line 34
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    .line 214
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->d:Landroid/widget/TextView;

    .line 215
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->e:Landroid/widget/TextView;

    .line 216
    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->f:Landroid/widget/TextView;

    .line 220
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;B)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->j:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    .prologue
    .line 21
    .line 1077
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->a()V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    new-instance v0, Lejl;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->j:Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$a;

    invoke-direct {v0, v1}, Lejl;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$b;)V

    .line 2054
    :try_start_0
    iget-wide v2, v0, Lejl;->b:J

    .line 2055
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "18657170802"

    new-instance v5, Lejl$1;

    invoke-direct {v5, v0}, Lejl$1;-><init>(Lejl;)V

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;JLcma;)V

    .line 2074
    iget-wide v2, v0, Lejl;->c:J

    .line 2075
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v4, "18657170802"

    new-instance v5, Lejl$2;

    invoke-direct {v5, v0}, Lejl$2;-><init>(Lejl;)V

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;JLcma;)V

    .line 2119
    iget-wide v2, v0, Lejl;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2120
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    .line 2145
    iget-wide v0, v0, Lejl;->d:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2146
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;IZLjava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f100409

    const v6, 0x7f10037e

    const/16 v5, 0x21

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    .line 3132
    packed-switch p1, :pswitch_data_0

    .line 3178
    :goto_0
    return-void

    .line 3134
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3135
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3136
    if-eqz p2, :cond_1

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6210\u529f\u3010\u901a\u8baf\u5f55\u3011: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3141
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3142
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3143
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3144
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 3145
    const-string/jumbo v2, "\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3146
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3147
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 3139
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5931\u8d25\u3010\u901a\u8baf\u5f55\u3011: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3148
    :cond_2
    const-string/jumbo v2, "\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3149
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3150
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 3153
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3154
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_0

    .line 3157
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3158
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3159
    if-eqz p2, :cond_5

    .line 3160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6210\u529f\u3010\u7535\u8bdd\u4f1a\u8bae\u3011: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3164
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3165
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3166
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3167
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 3168
    const-string/jumbo v2, "\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3169
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3170
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 3162
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5931\u8d25\u3010\u7535\u8bdd\u4f1a\u8bae\u3011: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 3171
    :cond_6
    const-string/jumbo v2, "\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3172
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3173
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 3176
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3177
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_0

    .line 3180
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3181
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3182
    if-eqz p2, :cond_9

    .line 3183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6210\u529f\u3010DING\u3011: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3187
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3188
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3189
    :cond_8
    :goto_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3190
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 3191
    const-string/jumbo v2, "\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3192
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3193
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 3185
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5931\u8d25\u3010DING\u3011: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 3194
    :cond_a
    const-string/jumbo v2, "\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3195
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3196
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 3199
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3200
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_0

    .line 3132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    .prologue
    .line 21
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;

    .prologue
    .line 21
    .line 3104
    invoke-direct {p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->a()V

    .line 3106
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 3107
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f040432

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->setContentView(I)V

    .line 42
    const v0, 0x7f111375

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->g:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->g:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f111376

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->h:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->h:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$2;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f111377

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->i:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->i:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting$3;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f111378

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->d:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f111379

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->e:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f11137a

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/DummyWukongTesting;->f:Landroid/widget/TextView;

    .line 72
    return-void
.end method

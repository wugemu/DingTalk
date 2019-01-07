.class public final Lcok;
.super Ljava/lang/Object;
.source "EmotionConversionUtil.java"


# static fields
.field private static a:Lcok;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcok;->b:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcok;->c:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static a()Lcok;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcok;->a:Lcok;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcok;

    invoke-direct {v0}, Lcok;-><init>()V

    sput-object v0, Lcok;->a:Lcok;

    .line 42
    :cond_0
    sget-object v0, Lcok;->a:Lcok;

    return-object v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    iget-object v3, p0, Lcok;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lcok;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    .local v1, "length":I
    if-lez v1, :cond_2

    .line 103
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(I)V

    .line 104
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 106
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    .line 107
    iget-object v3, p0, Lcok;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "["

    const-string/jumbo v5, "\\["

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "]"

    const-string/jumbo v5, "\\]"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 108
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 105
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v3, p0, Lcok;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "["

    const-string/jumbo v5, "\\["

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "]"

    const-string/jumbo v5, "\\]"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 113
    :cond_1
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 114
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcok;->d:Ljava/lang/String;

    .line 117
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    return-void
.end method

.method private static d()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 143
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 2072
    iget-object v1, v3, Lcid;->b:Lckd;

    .line 144
    .local v1, "featureInterface":Lckd;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Lckd;->h()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 151
    :cond_0
    :goto_0
    return v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "dingtalkbase"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "failed to get key isEmotionPatternEnabled, error="

    aput-object v7, v5, v6

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 148
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "emotionSizeDp"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;FZ)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/CharSequence;FZ)Landroid/text/SpannableString;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "emotionSizeDp"    # F
    .param p4, "isCenter"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 58
    if-nez p2, :cond_0

    .line 59
    const-string/jumbo p2, ""

    .line 61
    :cond_0
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .local v4, "spannableString":Landroid/text/SpannableString;
    invoke-direct {p0}, Lcok;->c()V

    .line 63
    iget-object v5, p0, Lcok;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 64
    iget-object v5, p0, Lcok;->d:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 65
    .local v3, "imgTextPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 66
    .local v2, "imgTextMatcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "imgText":Ljava/lang/String;
    iget-object v5, p0, Lcok;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcok;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, p3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gt v5, v6, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 84
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "imgText":Ljava/lang/String;
    .end local v2    # "imgTextMatcher":Ljava/util/regex/Matcher;
    .end local v3    # "imgTextPattern":Ljava/util/regex/Pattern;
    :cond_2
    return-object v4

    .line 74
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "imgText":Ljava/lang/String;
    .restart local v2    # "imgTextMatcher":Ljava/util/regex/Matcher;
    .restart local v3    # "imgTextPattern":Ljava/util/regex/Pattern;
    :cond_3
    if-eqz p4, :cond_4

    .line 76
    new-instance v5, Lcqs;

    invoke-direct {v5, v0}, Lcqs;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 78
    :cond_4
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 88
    .line 1092
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, p1, p2, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "emotionSizeDp"    # F

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 175
    :goto_0
    return v2

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xc8

    if-le v2, v4, :cond_1

    invoke-static {}, Lcok;->d()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 163
    goto :goto_0

    .line 2120
    :cond_1
    iget-object v2, p0, Lcok;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2122
    iget-object v2, p0, Lcok;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2123
    if-lez v5, :cond_4

    .line 2124
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 2125
    const-string/jumbo v2, "("

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move v4, v3

    .line 2126
    :goto_1
    if-ge v4, v5, :cond_3

    .line 2127
    add-int/lit8 v2, v5, -0x1

    if-ge v4, v2, :cond_2

    .line 2128
    iget-object v2, p0, Lcok;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v7, "["

    const-string/jumbo v8, "\\["

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "]"

    const-string/jumbo v8, "\\]"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2129
    const-string/jumbo v2, "|"

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2126
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 2131
    :cond_2
    iget-object v2, p0, Lcok;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v7, "["

    const-string/jumbo v8, "\\["

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "]"

    const-string/jumbo v8, "\\]"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 2134
    :cond_3
    const-string/jumbo v2, ")+"

    invoke-virtual {v6, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2135
    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcok;->e:Ljava/lang/String;

    .line 167
    :cond_4
    iget-object v2, p0, Lcok;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 168
    iget-object v2, p0, Lcok;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 169
    .local v1, "imgTextPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 170
    .local v0, "imgTextMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v0    # "imgTextMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "imgTextPattern":Ljava/util/regex/Pattern;
    :cond_5
    move v2, v3

    .line 175
    goto/16 :goto_0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 180
    sget-object v0, Lcqz;->b:Ljava/util/List;

    .line 182
    .local v0, "emotions":Ljava/util/List;, "Ljava/util/List<Lcqz$a;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqz$a;

    .line 184
    .local v2, "identifier":Lcqz$a;
    if-eqz v2, :cond_0

    .line 187
    iget-object v4, p0, Lcok;->b:Ljava/util/HashMap;

    .line 2856
    iget-object v5, v2, Lcqz$a;->a:Ljava/lang/String;

    .line 2865
    iget v6, v2, Lcqz$a;->b:I

    .line 187
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lcok;->c:Ljava/util/ArrayList;

    .line 3856
    iget-object v5, v2, Lcqz$a;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3878
    iget-object v4, v2, Lcqz$a;->e:Ljava/lang/String;

    .line 189
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 190
    iget-object v4, p0, Lcok;->b:Ljava/util/HashMap;

    .line 4878
    iget-object v5, v2, Lcqz$a;->e:Ljava/lang/String;

    .line 5865
    iget v6, v2, Lcqz$a;->b:I

    .line 190
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lcok;->c:Ljava/util/ArrayList;

    .line 5878
    iget-object v5, v2, Lcqz$a;->e:Ljava/lang/String;

    .line 191
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "identifier":Lcqz$a;
    :cond_1
    sget-object v0, Lcqz;->c:Ljava/util/List;

    .line 198
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_3

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqz$a;

    .line 200
    .restart local v2    # "identifier":Lcqz$a;
    if-eqz v2, :cond_2

    .line 203
    iget-object v4, p0, Lcok;->b:Ljava/util/HashMap;

    .line 6856
    iget-object v5, v2, Lcqz$a;->a:Ljava/lang/String;

    .line 6865
    iget v6, v2, Lcqz$a;->b:I

    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcok;->c:Ljava/util/ArrayList;

    .line 7856
    iget-object v5, v2, Lcqz$a;->a:Ljava/lang/String;

    .line 204
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7878
    iget-object v4, v2, Lcqz$a;->e:Ljava/lang/String;

    .line 205
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    iget-object v4, p0, Lcok;->b:Ljava/util/HashMap;

    .line 8878
    iget-object v5, v2, Lcqz$a;->e:Ljava/lang/String;

    .line 9865
    iget v6, v2, Lcqz$a;->b:I

    .line 206
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v4, p0, Lcok;->c:Ljava/util/ArrayList;

    .line 9878
    iget-object v5, v2, Lcqz$a;->e:Ljava/lang/String;

    .line 207
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v2    # "identifier":Lcqz$a;
    :cond_3
    return-void
.end method

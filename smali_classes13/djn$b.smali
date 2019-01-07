.class public final Ldjn$b;
.super Ljava/lang/Object;
.source "EmotionGuideChatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static a:I

.field static b:I


# instance fields
.field private c:I

.field private d:Landroid/text/SpannableStringBuilder;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    sput v0, Ldjn$b;->a:I

    .line 197
    const/4 v0, 0x2

    sput v0, Ldjn$b;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    if-eqz p1, :cond_0

    .line 209
    const-string/jumbo v0, "activity_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldjn$b;->e:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "activity_comment"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldjn$b;->g:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "p_t_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 211
    iput-wide v0, p0, Ldjn$b;->f:J

    .line 213
    :cond_0
    iget-object v0, p0, Ldjn$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    sget v0, Ldjn$b;->a:I

    iput v0, p0, Ldjn$b;->c:I

    .line 1223
    :goto_0
    sget v0, Lctk$i;->dt_emotion_tail_from:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1224
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v2, p0, Ldjn$b;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1227
    sget v2, Lctk$i;->dt_emotion_tail_from_dingtalk:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1232
    :goto_1
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1233
    sget v2, Lctk$c;->ui_common_orange1_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    .line 1235
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v4, 0x11

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1237
    :cond_1
    iput-object v1, p0, Ldjn$b;->d:Landroid/text/SpannableStringBuilder;

    .line 220
    return-void

    .line 216
    :cond_2
    sget v0, Ldjn$b;->b:I

    iput v0, p0, Ldjn$b;->c:I

    goto :goto_0

    .line 1230
    :cond_3
    iget-object v2, p0, Ldjn$b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method public static synthetic a(Ldjn$b;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "x0"    # Ldjn$b;

    .prologue
    .line 194
    iget-object v0, p0, Ldjn$b;->d:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public static synthetic b(Ldjn$b;)J
    .locals 2
    .param p0, "x0"    # Ldjn$b;

    .prologue
    .line 194
    iget-wide v0, p0, Ldjn$b;->f:J

    return-wide v0
.end method

.method public static synthetic c(Ldjn$b;)I
    .locals 1
    .param p0, "x0"    # Ldjn$b;

    .prologue
    .line 194
    iget v0, p0, Ldjn$b;->c:I

    return v0
.end method

.method static synthetic d(Ldjn$b;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ldjn$b;

    .prologue
    .line 194
    iget-object v0, p0, Ldjn$b;->e:Ljava/lang/String;

    return-object v0
.end method

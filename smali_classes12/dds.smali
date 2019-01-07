.class public Ldds;
.super Ljava/lang/Object;
.source "LinkSpannableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldds$a;
    }
.end annotation


# static fields
.field private static volatile b:Ldds;


# instance fields
.field public a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Ldds;->a:Landroid/util/LruCache;

    .line 39
    return-void
.end method

.method static synthetic a(Ldds;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Ldds;

    .prologue
    .line 28
    iget-object v0, p0, Ldds;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public static a()Ldds;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Ldds;->b:Ldds;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Ldds;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Ldds;->b:Ldds;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ldds;

    invoke-direct {v0}, Ldds;-><init>()V

    sput-object v0, Ldds;->b:Ldds;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Ldds;->b:Ldds;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldds;Ljava/lang/CharSequence;Landroid/widget/TextView;Landroid/app/Activity;Ldds$a;)V
    .locals 9
    .param p0, "x0"    # Ldds;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/app/Activity;
    .param p4, "x4"    # Ldds$a;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 28
    .line 1147
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1148
    check-cast v0, Landroid/text/Spannable;

    .line 1150
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v7, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 1151
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 1152
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1151
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1102
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    sget-object v2, Lcqn;->d:Ljava/util/regex/Pattern;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "http://"

    aput-object v4, v3, v7

    const-string/jumbo v4, "https://"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string/jumbo v6, "rtsp://"

    aput-object v6, v3, v4

    sget-object v4, Lcqm;->a:Lcqm$a;

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 1106
    sget-object v2, Lcqn;->h:Ljava/util/regex/Pattern;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "mailto:"

    aput-object v4, v3, v7

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcqm$a;Lcqm$b;)V

    .line 1107
    invoke-static {v0, v1}, Lcqm;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 1108
    invoke-static {v0, v1}, Lcqm;->b(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 1109
    invoke-static {v0}, Lcqm;->a(Ljava/util/ArrayList;)V

    .line 1111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2

    .line 1114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1115
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqh;

    .line 1118
    if-nez p4, :cond_1

    .line 1121
    iget-object v3, v0, Lcqh;->a:Ljava/lang/String;

    iget v4, v0, Lcqh;->b:I

    iget v0, v0, Lcqh;->c:I

    invoke-static {v3, v4, v0, v1, p2}, Lcqm;->a(Ljava/lang/String;IILandroid/text/Spannable;Landroid/view/View;)V

    goto :goto_1

    .line 1126
    :cond_2
    if-nez p4, :cond_3

    .line 1127
    iget-object v0, p0, Ldds;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :cond_3
    invoke-static {p3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1130
    new-instance v2, Ldds$2;

    move-object v3, p0

    move-object v4, v1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Ldds$2;-><init>(Ldds;Landroid/text/Spannable;Landroid/widget/TextView;Ldds$a;Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    .line 1064
    if-eqz p2, :cond_0

    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v0, p0, Ldds;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1072
    if-eqz v0, :cond_2

    .line 1074
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    if-eqz p3, :cond_0

    .line 1083
    const-string/jumbo v0, "thread_group_links_deal"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Ldds$1;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ldds$1;-><init>(Ldds;Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/widget/TextView;Ldds$a;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

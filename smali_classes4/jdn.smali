.class public final Ljdn;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdn$a;
    }
.end annotation


# static fields
.field private static A:Z

.field private static B:I

.field private static C:I

.field private static D:Z

.field private static E:Z

.field private static F:Z

.field private static G:I

.field private static H:J

.field private static I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static J:Z

.field private static K:I

.field private static L:J

.field private static M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Z

.field private static Q:Z

.field private static R:I

.field private static S:I

.field private static T:Z

.field private static U:J

.field private static V:Z

.field private static W:Z

.field private static X:Z

.field private static Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljdq;",
            ">;"
        }
    .end annotation
.end field

.field private static Z:Z

.field public static a:Z

.field private static aa:J

.field private static ab:I

.field private static ac:I

.field private static ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ae:Z

.field private static af:I

.field private static ag:Z

.field static b:Z

.field static c:Z

.field static d:I

.field static e:J

.field static f:J

.field static g:Z

.field static h:Z

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Z

.field private static p:J

.field private static q:J

.field private static r:J

.field private static s:Z

.field private static t:I

.field private static u:Z

.field private static v:I

.field private static w:Z

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xbb8

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v3, Ljdn;->a:Z

    const-string/jumbo v0, "\u63d0\u793a\u4fe1\u606f"

    sput-object v0, Ljdn;->i:Ljava/lang/String;

    const-string/jumbo v0, "\u786e\u8ba4"

    sput-object v0, Ljdn;->j:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    sput-object v0, Ljdn;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Ljdn;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Ljdn;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Ljdn;->n:Ljava/lang/String;

    sput-boolean v2, Ljdn;->o:Z

    sput-wide v4, Ljdn;->p:J

    sput-wide v4, Ljdn;->q:J

    const-wide/16 v0, 0x1388

    sput-wide v0, Ljdn;->r:J

    sput-boolean v2, Ljdn;->s:Z

    sput v2, Ljdn;->t:I

    sput-boolean v2, Ljdn;->u:Z

    sput v2, Ljdn;->v:I

    sput-boolean v2, Ljdn;->w:Z

    sput-boolean v2, Ljdn;->b:Z

    const v0, 0x36ee80

    sput v0, Ljdn;->x:I

    sput v2, Ljdn;->y:I

    sput v2, Ljdn;->z:I

    sput-boolean v3, Ljdn;->A:Z

    const/16 v0, 0x3e8

    sput v0, Ljdn;->B:I

    const/16 v0, 0xc8

    sput v0, Ljdn;->C:I

    sput-boolean v2, Ljdn;->D:Z

    sput-boolean v3, Ljdn;->E:Z

    sput-boolean v3, Ljdn;->F:Z

    sput v6, Ljdn;->G:I

    sput-wide v4, Ljdn;->H:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljdn;->I:Ljava/util/ArrayList;

    sput-boolean v2, Ljdn;->J:Z

    sput v6, Ljdn;->K:I

    sput-wide v4, Ljdn;->L:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljdn;->M:Ljava/util/ArrayList;

    sput-boolean v2, Ljdn;->P:Z

    sput-boolean v2, Ljdn;->Q:Z

    sput v7, Ljdn;->R:I

    sput v7, Ljdn;->S:I

    sput-boolean v3, Ljdn;->T:Z

    const-wide/32 v0, 0x493e0

    sput-wide v0, Ljdn;->U:J

    sput-boolean v2, Ljdn;->V:Z

    sput-boolean v2, Ljdn;->W:Z

    sput-boolean v2, Ljdn;->X:Z

    sput-boolean v2, Ljdn;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljdn;->Y:Ljava/util/List;

    sput-boolean v2, Ljdn;->Z:Z

    sput-wide v4, Ljdn;->aa:J

    sput v2, Ljdn;->ab:I

    sput v2, Ljdn;->ac:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljdn;->ad:Ljava/util/List;

    sput-boolean v3, Ljdn;->ae:Z

    const/16 v0, 0x50

    sput v0, Ljdn;->af:I

    const v0, 0x36ee80

    sput v0, Ljdn;->d:I

    sput-boolean v2, Ljdn;->ag:Z

    sput-wide v4, Ljdn;->e:J

    sput-wide v4, Ljdn;->f:J

    sput-boolean v2, Ljdn;->g:Z

    sput-boolean v3, Ljdn;->h:Z

    return-void
.end method

.method public static A()I
    .locals 1

    sget v0, Ljdn;->af:I

    return v0
.end method

.method public static B()Z
    .locals 1

    sget-boolean v0, Ljdn;->ag:Z

    return v0
.end method

.method public static C()Z
    .locals 1

    sget-boolean v0, Ljdn;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Ljdn;->g:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Ljdn;->g:Z

    goto :goto_0
.end method

.method public static D()Z
    .locals 1

    sget-boolean v0, Ljdn;->h:Z

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljdn$a;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljdn$a;

    invoke-direct {v0}, Ljdn$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v1, "b"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Ljdn$a;->a:Z

    const-string/jumbo v1, "t"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljdn$a;->b:Ljava/lang/String;

    const-string/jumbo v1, "st"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Ljdn$a;->c:Z

    const-string/jumbo v1, "i"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Ljdn$a;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "getLocateObj"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Ljdn;->s:Z

    return v0
.end method

.method public static a(J)Z
    .locals 6

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    sget-boolean v2, Ljdn;->o:Z

    if-eqz v2, :cond_0

    sget-wide v2, Ljdn;->q:J

    sub-long v2, v0, v2

    sget-wide v4, Ljdn;->p:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    sub-long/2addr v0, p0

    sget-wide v2, Ljdn;->r:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sput-boolean v1, Ljdn;->E:Z

    :try_start_0
    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v1

    invoke-static {p0}, Ljdo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljec;->a(Landroid/content/Context;Ljej;Ljava/lang/String;)Ljec$a;

    move-result-object v1

    invoke-static {p0, v1}, Ljdn;->a(Landroid/content/Context;Ljec$a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sput-wide v2, Ljdn;->f:J

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sput-wide v2, Ljdn;->e:J

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "getConfig"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Ljdn;->Q:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljdx;->a()J

    move-result-wide v2

    sub-long v4, v2, p1

    sget v6, Ljdn;->R:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    sget v4, Ljdn;->S:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "pref"

    const-string/jumbo v5, "ngpsTime"

    const-wide/16 v6, 0x0

    invoke-static {p0, v4, v5, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljdx;->c(JJ)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "ngpsTime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "ngpsCount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljdw;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "pref"

    const-string/jumbo v2, "ngpsCount"

    invoke-static {p0, v0, v2, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "resetPrefsNGPS"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "ngpsCount"

    invoke-static {p0, v2, v3, v0}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sget v3, Ljdn;->S:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "ngpsCount"

    invoke-static {p0, v2, v3, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljec$a$b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p1, Ljec$a$b;->a:Z

    iget-object v2, p1, Ljec$a$b;->b:Ljava/lang/String;

    iget-object v3, p1, Ljec$a$b;->c:Ljava/lang/String;

    iget-object v4, p1, Ljec$a$b;->d:Ljava/lang/String;

    iget-boolean v5, p1, Ljec$a$b;->e:Z

    invoke-static {p2, p3}, Ljdo;->a(Ljava/lang/String;Ljava/lang/String;)Ljej;

    move-result-object v6

    if-eqz v1, :cond_2

    if-eqz v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljbq;

    invoke-direct {v4, v2, v3}, Ljbq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4, v6}, Ljbr;->a(Landroid/content/Context;Ljbq;Ljej;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-static {p0, v6}, Ljdt;->a(Landroid/content/Context;Ljej;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "config|get dex able is false"

    invoke-static {p0, p2, v2}, Ljdu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "downLoadPluginDex"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljec$a;)Z
    .locals 14

    .prologue
    const/16 v9, 0x1e

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    :try_start_0
    iget-object v3, p1, Ljec$a;->h:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    const-string/jumbo v2, "callamapflag"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Ljdn;->F:Z

    invoke-static {v2, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljdn;->F:Z

    const-string/jumbo v2, "co"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Ljdn;->F:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    sput-boolean v2, Ljdn;->b:Z

    sget-boolean v2, Ljdn;->F:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "count"

    sget v4, Ljdn;->G:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Ljdn;->G:I

    const-string/jumbo v2, "sysTime"

    sget-wide v4, Ljdn;->H:J

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Ljdn;->H:J

    const-string/jumbo v2, "sn"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    sget-object v4, Ljdn;->I:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    sget v2, Ljdn;->G:I

    if-eq v2, v8, :cond_2

    sget-wide v2, Ljdn;->H:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "nowtime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sget-wide v4, Ljdn;->H:J

    invoke-static {v4, v5, v2, v3}, Ljdx;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Ljdn;->i(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    :try_start_1
    iget-object v2, p1, Ljec$a;->k:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string/jumbo v3, "amappushflag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Ljdn;->J:Z

    invoke-static {v3, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Ljdn;->J:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "count"

    sget v4, Ljdn;->K:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Ljdn;->K:I

    const-string/jumbo v3, "sysTime"

    sget-wide v4, Ljdn;->L:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Ljdn;->L:J

    const-string/jumbo v3, "sn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v1

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    sget-object v4, Ljdn;->M:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_callAMapSer"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    :cond_3
    :goto_4
    return v0

    :cond_4
    :try_start_3
    sget v2, Ljdn;->K:I

    if-eq v2, v8, :cond_5

    sget-wide v2, Ljdn;->L:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "pushSerTime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sget-wide v4, Ljdn;->L:J

    invoke-static {v4, v5, v2, v3}, Ljdx;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Ljdn;->j(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_5
    :try_start_4
    iget-object v2, p1, Ljec$a;->l:Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Ljdn;->P:Z

    invoke-static {v3, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Ljdn;->P:Z

    const-string/jumbo v3, "mco"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Ljdn;->y:I

    const-string/jumbo v3, "co"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Ljdn;->z:I

    const-string/jumbo v3, "it"

    const/16 v4, 0xe10

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Ljdn;->x:I

    const v4, 0x36ee80

    if-ge v3, v4, :cond_6

    const v3, 0x36ee80

    sput v3, Ljdn;->x:I

    :cond_6
    const-string/jumbo v3, "a"

    const-string/jumbo v4, "\u63d0\u793a\u4fe1\u606f"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljdn;->i:Ljava/lang/String;

    const-string/jumbo v3, "o"

    const-string/jumbo v4, "\u786e\u8ba4"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljdn;->j:Ljava/lang/String;

    const-string/jumbo v3, "c"

    const-string/jumbo v4, "\u53d6\u6d88"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljdn;->k:Ljava/lang/String;

    const-string/jumbo v3, "i"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljdn;->l:Ljava/lang/String;

    const-string/jumbo v3, "u"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljdn;->m:Ljava/lang/String;

    const-string/jumbo v3, "t"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljdn;->n:Ljava/lang/String;

    sget-object v2, Ljdn;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "null"

    sget-object v3, Ljdn;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    sget-object v2, Ljdn;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "null"

    sget-object v3, Ljdn;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    sget v2, Ljdn;->z:I

    sget v3, Ljdn;->y:I

    if-le v2, v3, :cond_a

    :cond_9
    const/4 v2, 0x0

    sput-boolean v2, Ljdn;->P:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_6
    :try_start_5
    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v2

    iget-object v3, p1, Ljec$a;->y:Ljec$a$d;

    if-eqz v3, :cond_1c

    iget-object v4, v3, Ljec$a$d;->b:Ljava/lang/String;

    iget-object v5, v3, Ljec$a$d;->a:Ljava/lang/String;

    iget-object v3, v3, Ljec$a$d;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_b
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Ljbr;->a(Landroid/content/Context;Ljbq;Ljej;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :goto_7
    :try_start_6
    sget-boolean v2, Ljdn;->a:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v2, :cond_c

    :try_start_7
    iget-object v2, p1, Ljec$a;->z:Ljec$a$c;

    if-eqz v2, :cond_c

    iget-object v3, v2, Ljec$a$c;->a:Ljava/lang/String;

    sput-object v3, Ljdn;->N:Ljava/lang/String;

    iget-object v2, v2, Ljec$a$c;->b:Ljava/lang/String;

    sput-object v2, Ljdn;->O:Ljava/lang/String;

    sget-object v2, Ljdn;->N:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljdn;->O:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljei;

    const-string/jumbo v3, "loc"

    sget-object v4, Ljdn;->N:Ljava/lang/String;

    sget-object v5, Ljdn;->O:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Ljei;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v3, v2, Ljei;->a:Ljei$a;

    if-eqz v3, :cond_c

    iget-object v3, v2, Ljei;->a:Ljei$a;

    .line 2000
    iget-object v3, v3, Ljei$a;->a:Ljava/lang/String;

    .line 1000
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v2, Ljei;->a:Ljei$a;

    .line 3000
    iget-object v3, v3, Ljei$a;->a:Ljava/lang/String;

    .line 1000
    const-string/jumbo v4, "libJni_wgs2gcj.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Ljei;->a:Ljei$a;

    .line 4000
    iget-object v3, v3, Ljei$a;->a:Ljava/lang/String;

    .line 1000
    iget-object v4, v2, Ljei;->c:Landroid/content/Context;

    invoke-static {v4}, Ljek;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    move-result v3

    if-nez v3, :cond_1d

    .line 0
    :cond_c
    :goto_8
    :try_start_8
    iget-object v2, p1, Ljec$a;->x:Ljec$a$a;

    if-eqz v2, :cond_f

    iget-boolean v3, v2, Ljec$a$a;->a:Z

    sput-boolean v3, Ljdn;->A:Z

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "exception"

    sget-boolean v5, Ljdn;->A:Z

    invoke-static {p0, v3, v4, v5}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v2, Ljec$a$a;->c:Lorg/json/JSONObject;

    const-string/jumbo v3, "fn"

    sget v4, Ljdn;->B:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Ljdn;->B:I

    const-string/jumbo v3, "mpn"

    sget v4, Ljdn;->C:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Ljdn;->C:I

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_d

    const/16 v3, 0x1f4

    sput v3, Ljdn;->C:I

    :cond_d
    sget v3, Ljdn;->C:I

    if-ge v3, v9, :cond_e

    const/16 v3, 0x1e

    sput v3, Ljdn;->C:I

    :cond_e
    const-string/jumbo v3, "igu"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Ljdn;->D:Z

    invoke-static {v2, v3}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljdn;->D:Z

    sget v2, Ljdn;->B:I

    sget-boolean v3, Ljdn;->D:Z

    invoke-static {v2, v3}, Ljcp;->a(IZ)V

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "fn"

    sget v4, Ljdn;->B:I

    invoke-static {p0, v2, v3, v4}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "mpn"

    sget v4, Ljdn;->C:I

    invoke-static {p0, v2, v3, v4}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "igu"

    sget-boolean v4, Ljdn;->D:Z

    invoke-static {p0, v2, v3, v4}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :cond_f
    :goto_9
    :try_start_9
    iget-object v3, p1, Ljec$a;->m:Lorg/json/JSONObject;

    if-eqz v3, :cond_13

    const-string/jumbo v2, "able"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "fs"

    invoke-static {v3, v2}, Ljdn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljdn$a;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-boolean v4, v2, Ljdn$a;->c:Z

    sput-boolean v4, Ljdn;->s:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    :try_start_a
    iget-object v2, v2, Ljdn$a;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Ljdn;->t:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    :cond_10
    :goto_a
    :try_start_b
    const-string/jumbo v2, "us"

    invoke-static {v3, v2}, Ljdn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljdn$a;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-boolean v4, v2, Ljdn$a;->c:Z

    sput-boolean v4, Ljdn;->u:Z

    iget-boolean v4, v2, Ljdn$a;->a:Z

    sput-boolean v4, Ljdn;->w:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    :try_start_c
    iget-object v2, v2, Ljdn$a;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Ljdn;->v:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    :goto_b
    :try_start_d
    sget v2, Ljdn;->v:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_11

    const/4 v2, 0x0

    sput-boolean v2, Ljdn;->u:Z

    :cond_11
    const-string/jumbo v2, "rs"

    invoke-static {v3, v2}, Ljdn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljdn$a;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-boolean v3, v2, Ljdn$a;->c:Z

    sput-boolean v3, Ljdn;->o:Z

    if-eqz v3, :cond_12

    invoke-static {}, Ljdx;->b()J

    move-result-wide v4

    sput-wide v4, Ljdn;->q:J

    iget v3, v2, Ljdn$a;->d:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    sput-wide v4, Ljdn;->r:J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    :cond_12
    :try_start_e
    iget-object v2, v2, Ljdn$a;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Ljdn;->p:J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a

    :cond_13
    :goto_c
    :try_start_f
    iget-object v2, p1, Ljec$a;->o:Lorg/json/JSONObject;

    if-eqz v2, :cond_14

    const-string/jumbo v3, "able"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Ljdn;->Q:Z

    invoke-static {v3, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Ljdn;->Q:Z

    if-eqz v3, :cond_14

    const-string/jumbo v3, "c"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1e

    const/16 v3, 0xbb8

    sput v3, Ljdn;->R:I

    :goto_d
    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Ljdn;->S:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    :cond_14
    :goto_e
    :try_start_10
    iget-object v2, p1, Ljec$a;->p:Lorg/json/JSONObject;

    if-eqz v2, :cond_16

    const-string/jumbo v3, "able"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Ljdn;->T:Z

    invoke-static {v3, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Ljdn;->T:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "c"

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Ljdn;->U:J

    :cond_15
    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "ca"

    sget-boolean v4, Ljdn;->T:Z

    invoke-static {p0, v2, v3, v4}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "ct"

    sget-wide v4, Ljdn;->U:J

    invoke-static {p0, v2, v3, v4, v5}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c

    :cond_16
    :goto_f
    :try_start_11
    iget-object v2, p1, Ljec$a;->B:Ljec$a$b;

    if-eqz v2, :cond_17

    const-string/jumbo v3, "OfflineLocation"

    const-string/jumbo v4, "1.0.0"

    invoke-static {p0, v2, v3, v4}, Ljdn;->a(Landroid/content/Context;Ljec$a$b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ljdn;->W:Z

    sput-boolean v2, Ljcu;->a:Z

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "oAble"

    sget-boolean v4, Ljdn;->W:Z

    invoke-static {p0, v2, v3, v4}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d

    :cond_17
    :goto_10
    :try_start_12
    iget-object v2, p1, Ljec$a;->A:Ljec$a$b;

    if-eqz v2, :cond_18

    const-string/jumbo v3, "Collection"

    const-string/jumbo v4, "1.0.0"

    invoke-static {p0, v2, v3, v4}, Ljdn;->a(Landroid/content/Context;Ljec$a$b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ljdn;->V:Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_e

    :cond_18
    :goto_11
    :try_start_13
    iget-object v2, p1, Ljec$a;->C:Ljec$a$b;

    if-eqz v2, :cond_19

    const-string/jumbo v3, "HttpDNS"

    const-string/jumbo v4, "1.0.0"

    invoke-static {p0, v2, v3, v4}, Ljdn;->a(Landroid/content/Context;Ljec$a$b;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ljdn;->X:Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_f

    :cond_19
    :goto_12
    :try_start_14
    iget-object v4, p1, Ljec$a;->j:Lorg/json/JSONObject;

    if-eqz v4, :cond_24

    const-string/jumbo v2, "able"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Ljdn;->Z:Z

    invoke-static {v2, v3}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljdn;->Z:Z

    const-string/jumbo v2, "sysTime"

    invoke-static {}, Ljdx;->a()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Ljdn;->aa:J

    const-string/jumbo v2, "n"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Ljdn;->ab:I

    const-string/jumbo v2, "nh"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Ljdn;->ac:I

    sget-boolean v2, Ljdn;->Z:Z

    if-eqz v2, :cond_24

    sget v2, Ljdn;->ab:I

    if-eq v2, v8, :cond_1a

    sget v2, Ljdn;->ab:I

    sget v3, Ljdn;->ac:I

    if-lt v2, v3, :cond_24

    :cond_1a
    const-string/jumbo v2, "l"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v1

    :goto_13
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_11

    move-result v3

    if-ge v2, v3, :cond_22

    :try_start_15
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Ljdq;

    invoke-direct {v7}, Ljdq;-><init>()V

    const-string/jumbo v3, "able"

    const-string/jumbo v8, "false"

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v8}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v7, Ljdq;->a:Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_10

    if-nez v3, :cond_1f

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catch_2
    move-exception v2

    :try_start_16
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_callAMapPush"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_3
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_openAMap"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_6

    :cond_1b
    :try_start_17
    new-instance v3, Ljbq;

    invoke-direct {v3, v5, v4}, Ljbq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, v2}, Ljbr;->a(Landroid/content/Context;Ljbq;Ljej;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v2

    :try_start_18
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_sdkUpdate"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_7

    :cond_1c
    const/4 v3, 0x0

    :try_start_19
    invoke-static {p0, v3, v2}, Ljbr;->a(Landroid/content/Context;Ljbq;Ljej;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4

    goto/16 :goto_7

    .line 1000
    :cond_1d
    :try_start_1a
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Ljei;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Ljei;->start()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_5

    goto/16 :goto_8

    .line 0
    :catch_5
    move-exception v2

    :try_start_1b
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_groupOffset"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_6
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_uploadException"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_9

    :catch_7
    move-exception v2

    :try_start_1c
    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "loadconfig part2"

    invoke-static {v2, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_8

    goto/16 :goto_a

    :catch_8
    move-exception v2

    :try_start_1d
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_locate"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1

    goto/16 :goto_c

    :catch_9
    move-exception v2

    :try_start_1e
    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "loadconfig part1"

    invoke-static {v2, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_a
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadconfig part"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_8

    goto/16 :goto_c

    :cond_1e
    mul-int/lit16 v3, v3, 0x3e8

    :try_start_1f
    sput v3, Ljdn;->R:I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    goto/16 :goto_d

    :catch_b
    move-exception v2

    :try_start_20
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_ngps"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_c
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_cacheAble"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catch_d
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_OfflineDex"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :catch_e
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_CollectorDex"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :catch_f
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_dnsDex"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_12

    :cond_1f
    :try_start_21
    const-string/jumbo v3, "pn"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ljdq;->b:Ljava/lang/String;

    const-string/jumbo v3, "cn"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ljdq;->c:Ljava/lang/String;

    const-string/jumbo v3, "a"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Ljdq;->e:Ljava/lang/String;

    const-string/jumbo v3, "b"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_21

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_15
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_20

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    :try_start_22
    const-string/jumbo v12, "k"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "v"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_20
    :try_start_23
    iput-object v9, v7, Ljdq;->d:Ljava/util/List;

    :cond_21
    const-string/jumbo v3, "is"

    const-string/jumbo v8, "false"

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v7, Ljdq;->f:Z

    sget-object v3, Ljdn;->Y:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    goto/16 :goto_14

    :catch_10
    move-exception v3

    goto/16 :goto_14

    :cond_22
    :try_start_24
    const-string/jumbo v2, "sl"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_24

    move v2, v1

    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_24

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "pan"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    sget-object v5, Ljdn;->ad:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catch_11
    move-exception v2

    :try_start_25
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_otherServiceList"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1

    :cond_24
    :try_start_26
    iget-object v2, p1, Ljec$a;->i:Lorg/json/JSONObject;

    if-eqz v2, :cond_25

    const-string/jumbo v3, "able"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Ljdn;->ae:Z

    invoke-static {v3, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Ljdn;->ae:Z

    if-eqz v3, :cond_25

    const-string/jumbo v3, "c"

    sget v4, Ljdn;->af:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Ljdn;->af:I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    :cond_25
    :goto_18
    :try_start_27
    iget-object v3, p1, Ljec$a;->g:Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    if-eqz v3, :cond_3

    :try_start_28
    const-string/jumbo v2, "at"

    const/16 v4, 0x7b

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Ljdn;->d:I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_15

    :goto_19
    :try_start_29
    const-string/jumbo v2, "ila"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Ljdn;->ag:Z

    invoke-static {v2, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljdn;->ag:Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    :goto_1a
    :try_start_2a
    const-string/jumbo v2, "icbd"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Ljdn;->c:Z

    invoke-static {v2, v4}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljdn;->c:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "loc"

    invoke-static {p0, v2}, Ljbr;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_17

    :cond_26
    :goto_1b
    if-eqz p0, :cond_3

    if-eqz v3, :cond_3

    :try_start_2b
    const-string/jumbo v2, "re"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Ljdn;->h:Z

    invoke-static {v2, v3}, Ljec;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljdn;->h:Z

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "fr"

    sget-boolean v4, Ljdn;->h:Z

    invoke-static {p0, v2, v3, v4}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    goto/16 :goto_4

    :catch_12
    move-exception v2

    :try_start_2c
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "checkReLocationAble"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    goto/16 :goto_4

    :catch_13
    move-exception v2

    :try_start_2d
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_hotUpdate"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_14
    move-exception v2

    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadConfigData_gpsGeoAble"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1

    goto :goto_18

    :catch_15
    move-exception v2

    :try_start_2e
    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "requestSdkAuthInterval"

    invoke-static {v2, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_16
    move-exception v2

    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "loadConfigData_indoor"

    invoke-static {v2, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_17
    move-exception v2

    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "loadConfigData_CallBackDex"

    invoke-static {v2, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_13

    goto :goto_1b

    :catch_18
    move-exception v10

    goto/16 :goto_16
.end method

.method public static b()I
    .locals 1

    sget v0, Ljdn;->t:I

    return v0
.end method

.method public static b(J)Z
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Ljdn;->T:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljdx;->a()J

    move-result-wide v2

    sub-long/2addr v2, p0

    sget-wide v4, Ljdn;->U:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    sget-wide v4, Ljdn;->U:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Ljdn;->F:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Ljdn;->G:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-wide v2, Ljdn;->H:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "nowtime"

    invoke-static {p0, v2, v3, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sget-wide v4, Ljdn;->H:J

    invoke-static {v4, v5, v2, v3}, Ljdx;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Ljdn;->i(Landroid/content/Context;)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v2, "count"

    invoke-static {p0, v0, v2, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "count"

    invoke-static {p0, v2, v3, v0}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sget v3, Ljdn;->G:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "count"

    invoke-static {p0, v2, v3, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Ljdn;->u:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Ljdn;->J:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Ljdn;->K:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-wide v2, Ljdn;->L:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "pushSerTime"

    invoke-static {p0, v2, v3, v4, v5}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    sget-wide v4, Ljdn;->L:J

    invoke-static {v4, v5, v2, v3}, Ljdx;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Ljdn;->j(Landroid/content/Context;)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v2, "pushCount"

    invoke-static {p0, v0, v2, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "pushCount"

    invoke-static {p0, v2, v3, v0}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sget v3, Ljdn;->K:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "pushCount"

    invoke-static {p0, v2, v3, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    sget v0, Ljdn;->v:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Ljdn;->P:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Ljdn;->z:I

    if-lez v1, :cond_0

    sget v1, Ljdn;->y:I

    if-lez v1, :cond_0

    sget v1, Ljdn;->z:I

    sget v2, Ljdn;->y:I

    if-gt v1, v2, :cond_0

    const-string/jumbo v1, "abcd"

    const-string/jumbo v2, "lct"

    invoke-static {p0, v1, v2, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v1, "abcd"

    const-string/jumbo v4, "lst"

    invoke-static {p0, v1, v4, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_2

    const-string/jumbo v1, "abcd"

    const-string/jumbo v2, "lct"

    invoke-static {p0, v1, v2, v6, v7}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    sub-long v2, v6, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v1, v2, v8

    if-lez v1, :cond_3

    const-string/jumbo v1, "abcd"

    const-string/jumbo v2, "lct"

    invoke-static {p0, v1, v2, v6, v7}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v1, "abcd"

    const-string/jumbo v2, "t"

    invoke-static {p0, v1, v2, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    sub-long v2, v6, v4

    sget v1, Ljdn;->x:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const-string/jumbo v1, "abcd"

    const-string/jumbo v2, "t"

    invoke-static {p0, v1, v2, v0}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget v2, Ljdn;->y:I

    if-gt v1, v2, :cond_0

    const-string/jumbo v0, "abcd"

    const-string/jumbo v2, "lst"

    invoke-static {p0, v0, v2, v6, v7}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "abcd"

    const-string/jumbo v2, "t"

    invoke-static {p0, v0, v2, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "exception"

    sget-boolean v2, Ljdn;->A:Z

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljdn;->A:Z

    invoke-static {p0}, Ljdn;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "oAble"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljdn;->W:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "fn"

    sget v2, Ljdn;->B:I

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljdn;->B:I

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "mpn"

    sget v2, Ljdn;->C:I

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljdn;->C:I

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "igu"

    sget-boolean v2, Ljdn;->D:Z

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljdn;->D:Z

    sget v0, Ljdn;->B:I

    sget-boolean v1, Ljdn;->D:Z

    invoke-static {v0, v1}, Ljcp;->a(IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "ca"

    sget-boolean v2, Ljdn;->T:Z

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljdn;->T:Z

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "ct"

    sget-wide v2, Ljdn;->U:J

    invoke-static {p0, v0, v1, v2, v3}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljdn;->U:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "fr"

    sget-boolean v2, Ljdn;->h:Z

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljdn;->h:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadLastAbleState p1"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "loadLastAbleState p2"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Ljdn;->w:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljdn;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 0
    :try_start_0
    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v1

    sget-boolean v0, Ljdn;->A:Z

    .line 5000
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Ljej;->a:I

    .line 0
    invoke-static {p0, v1}, Ljeq;->a(Landroid/content/Context;Ljej;)Ljeq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .line 5000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljdn;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Ljdn;->Z:Z

    if-eqz v0, :cond_0

    sget v0, Ljdn;->ab:I

    if-eqz v0, :cond_0

    sget v0, Ljdn;->ac:I

    if-eqz v0, :cond_0

    sget-wide v4, Ljdn;->aa:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    sget v0, Ljdn;->ab:I

    if-eq v0, v10, :cond_1

    sget v0, Ljdn;->ab:I

    sget v3, Ljdn;->ac:I

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Ljdn;->ad:Ljava/util/List;

    if-eqz v0, :cond_3

    sget-object v0, Ljdn;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Ljdn;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Ljdx;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    sget v0, Ljdn;->ab:I

    if-ne v0, v10, :cond_4

    sget v0, Ljdn;->ac:I

    if-ne v0, v10, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "pref"

    const-string/jumbo v3, "ots"

    invoke-static {p0, v0, v3, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v0, "pref"

    const-string/jumbo v3, "otsh"

    invoke-static {p0, v0, v3, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v0, "pref"

    const-string/jumbo v3, "otn"

    invoke-static {p0, v0, v3, v1}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "pref"

    const-string/jumbo v8, "otnh"

    invoke-static {p0, v3, v8, v1}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    sget v8, Ljdn;->ab:I

    if-eq v8, v10, :cond_8

    sget-wide v8, Ljdn;->aa:J

    invoke-static {v8, v9, v4, v5}, Ljdx;->b(JJ)Z

    move-result v4

    if-nez v4, :cond_5

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ots"

    sget-wide v4, Ljdn;->aa:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "otsh"

    sget-wide v4, Ljdn;->aa:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "otn"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "otnh"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljdw;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "otn"

    invoke-static {p0, v0, v1, v2}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "otnh"

    invoke-static {p0, v0, v1, v2}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v3, "resetPrefsBind"

    invoke-static {v0, v1, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget v4, Ljdn;->ab:I

    if-ge v0, v4, :cond_8

    sget v4, Ljdn;->ac:I

    if-ne v4, v10, :cond_6

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "otn"

    invoke-static {p0, v3, v4, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v3, "otnh"

    invoke-static {p0, v0, v3, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    sget-wide v4, Ljdn;->aa:J

    invoke-static {v4, v5, v6, v7}, Ljdx;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v1, "pref"

    const-string/jumbo v3, "otsh"

    sget-wide v4, Ljdn;->aa:J

    invoke-static {p0, v1, v3, v4, v5}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "pref"

    const-string/jumbo v3, "otn"

    invoke-static {p0, v1, v3, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "otnh"

    invoke-static {p0, v0, v1, v2}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    sget v4, Ljdn;->ac:I

    if-ge v3, v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v3, 0x1

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "otn"

    invoke-static {p0, v3, v4, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v3, "otnh"

    invoke-static {p0, v0, v3, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    sget v0, Ljdn;->ab:I

    if-ne v0, v10, :cond_b

    const-string/jumbo v0, "pref"

    const-string/jumbo v4, "otn"

    invoke-static {p0, v0, v4, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget v0, Ljdn;->ac:I

    if-ne v0, v10, :cond_9

    const-string/jumbo v0, "pref"

    const-string/jumbo v3, "otnh"

    invoke-static {p0, v0, v3, v1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    sget-wide v4, Ljdn;->aa:J

    invoke-static {v4, v5, v6, v7}, Ljdx;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "otsh"

    sget-wide v4, Ljdn;->aa:J

    invoke-static {p0, v0, v1, v4, v5}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "otnh"

    invoke-static {p0, v0, v1, v2}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_a
    sget v0, Ljdn;->ac:I

    if-ge v3, v0, :cond_b

    add-int/lit8 v0, v3, 0x1

    const-string/jumbo v1, "pref"

    const-string/jumbo v3, "otnh"

    invoke-static {p0, v1, v3, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljdn;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sget-wide v4, Ljdn;->f:J

    sub-long/2addr v2, v4

    sget v4, Ljdn;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Ljdn;->g:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "isConfigNeedUpdate"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljdn;->l:Ljava/lang/String;

    return-object v0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "nowtime"

    sget-wide v2, Ljdn;->H:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljdw;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljdn;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static j(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pushSerTime"

    sget-wide v2, Ljdn;->L:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "pushCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljdw;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljdn;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Ljdn;->b:Z

    return v0
.end method

.method public static m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljdn;->I:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljdn;->M:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Ljdn;->A:Z

    return v0
.end method

.method public static p()I
    .locals 1

    sget v0, Ljdn;->C:I

    return v0
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, Ljdn;->E:Z

    return v0
.end method

.method public static r()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ljdn;->E:Z

    return-void
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Ljdn;->Q:Z

    return v0
.end method

.method public static t()J
    .locals 2

    sget-wide v0, Ljdn;->U:J

    return-wide v0
.end method

.method public static u()Z
    .locals 1

    sget-boolean v0, Ljdn;->T:Z

    return v0
.end method

.method public static v()Z
    .locals 1

    sget-boolean v0, Ljdn;->V:Z

    return v0
.end method

.method public static w()Z
    .locals 1

    sget-boolean v0, Ljdn;->W:Z

    return v0
.end method

.method public static x()Z
    .locals 1

    sget-boolean v0, Ljdn;->X:Z

    return v0
.end method

.method public static y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljdq;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljdn;->Y:Ljava/util/List;

    return-object v0
.end method

.method public static z()Z
    .locals 1

    sget-boolean v0, Ljdn;->ae:Z

    return v0
.end method

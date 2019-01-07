.class public final Ljws;
.super Ljava/lang/Object;


# static fields
.field private static i:Ljava/lang/String;

.field private static j:Ljws;


# instance fields
.field a:Ljava/lang/Object;

.field public b:Lcom/xiaomi/metoknlp/devicediscover/g;

.field c:I

.field d:Ljwk;

.field public e:Ljwn;

.field f:Ljwp;

.field public g:Landroid/content/Context;

.field h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljws;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Ljws;->c:I

    new-instance v0, Ljwk;

    invoke-direct {v0}, Ljwk;-><init>()V

    iput-object v0, p0, Ljws;->d:Ljwk;

    new-instance v0, Ljwj;

    invoke-direct {v0, p0}, Ljwj;-><init>(Ljws;)V

    iput-object v0, p0, Ljws;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a()Ljws;
    .locals 1

    sget-object v0, Ljws;->j:Ljws;

    if-nez v0, :cond_0

    new-instance v0, Ljws;

    invoke-direct {v0}, Ljws;-><init>()V

    sput-object v0, Ljws;->j:Ljws;

    :cond_0
    sget-object v0, Ljws;->j:Ljws;

    return-object v0
.end method


# virtual methods
.method final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 0
    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    invoke-virtual {v0}, Ljwc;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Ljws;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v3, p0, Ljws;->c:I

    .line 1000
    iget-object v0, p0, Ljws;->g:Landroid/content/Context;

    invoke-static {v0}, Ljwo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljws;->g:Landroid/content/Context;

    invoke-static {v1, v2}, Ljwo;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljws;->g:Landroid/content/Context;

    invoke-static {v2, v3}, Ljwo;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 0
    :cond_2
    :goto_1
    iget-object v0, p0, Ljws;->d:Ljwk;

    if-eqz v0, :cond_0

    .line 11000
    iget-object v0, p0, Ljws;->g:Landroid/content/Context;

    iget-object v1, p0, Ljws;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v5}, Ljwr;->a(Landroid/content/Context;Landroid/os/Handler;I)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v3, p0, Ljws;->d:Ljwk;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljws;->d:Ljwk;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2000
    iput-object v4, v3, Ljwk;->a:Ljava/lang/String;

    .line 1000
    invoke-static {}, Ljwa;->b()Ljava/lang/String;

    move-result-object v4

    .line 3000
    iput-object v4, v3, Ljwk;->b:Ljava/lang/String;

    .line 4000
    iput-object v0, v3, Ljwk;->c:Ljava/lang/String;

    .line 5000
    iput-object v1, v3, Ljwk;->f:Ljava/lang/String;

    .line 6000
    iput-object v2, v3, Ljwk;->e:Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Ljws;->e:Ljwn;

    .line 7000
    iget-wide v0, v0, Ljwn;->a:J

    .line 8000
    iput-wide v0, v3, Ljwk;->g:J

    .line 1000
    iget-object v0, p0, Ljws;->e:Ljwn;

    .line 9000
    iget-wide v0, v0, Ljwn;->b:J

    .line 10000
    iput-wide v0, v3, Ljwk;->h:J

    goto :goto_1

    .line 0
    :pswitch_1
    iput v2, p0, Ljws;->c:I

    .line 12000
    invoke-virtual {p0}, Ljws;->b()V

    goto :goto_0

    .line 0
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Ljws;->c:I

    .line 13000
    new-instance v0, Ljwp;

    invoke-direct {v0, p0, v5}, Ljwp;-><init>(Ljws;B)V

    iput-object v0, p0, Ljws;->f:Ljwp;

    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    .line 14000
    iget-object v0, v0, Ljwc;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "m_s_u"

    const-string/jumbo v2, "https://metok.sys.miui.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13000
    sput-object v0, Ljws;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Ljws;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/api/v2/realip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljws;->f:Ljwp;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Ljwp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 0
    :pswitch_3
    iput v1, p0, Ljws;->c:I

    iget-object v0, p0, Ljws;->f:Ljwp;

    invoke-virtual {v0, v3}, Ljwp;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljws;->f:Ljwp;

    .line 15000
    iget v0, p0, Ljws;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljws;->d:Ljwk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljws;->d:Ljwk;

    .line 16000
    new-instance v1, Ljwm;

    invoke-direct {v1, v0, v5}, Ljwm;-><init>(Ljwk;B)V

    .line 15000
    invoke-virtual {v1}, Ljwm;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ljws;->g:Landroid/content/Context;

    check-cast v0, Ljvw;

    invoke-virtual {v0, v1}, Ljvw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

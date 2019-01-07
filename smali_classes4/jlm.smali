.class public final Ljlm;
.super Ljava/lang/Object;
.source "OutputContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljlm$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljlj;

.field public c:J

.field public d:Z

.field public e:Ljlm$a;

.field public f:Ljmd$a;


# direct methods
.method public constructor <init>(Ljlj;)V
    .locals 2
    .param p1, "mListener"    # Ljlj;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Ljlm;->a:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljlm;->c:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljlm;->d:Z

    .line 26
    new-instance v0, Ljlm$a;

    invoke-direct {v0}, Ljlm$a;-><init>()V

    iput-object v0, p0, Ljlm;->e:Ljlm$a;

    .line 27
    new-instance v0, Ljmd$a;

    invoke-direct {v0}, Ljmd$a;-><init>()V

    iput-object v0, p0, Ljlm;->f:Ljmd$a;

    .line 30
    iput-object p1, p0, Ljlm;->b:Ljlj;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljll;)V
    .locals 10
    .param p1, "inputContext"    # Ljll;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    iget-object v2, p0, Ljlm;->b:Ljlj;

    if-nez v2, :cond_0

    .line 89
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p1, Ljll;->b:Ljlw;

    .line 40
    .local v1, "task":Ljlw;
    iget-object v2, p0, Ljlm;->e:Ljlm$a;

    iget-boolean v0, v2, Ljlm$a;->a:Z

    .line 41
    .local v0, "success":Z
    if-eqz v0, :cond_2

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, v1, Ljlw;->a:Z

    .line 43
    iget-object v2, p1, Ljll;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljlw;->d:Ljava/lang/String;

    .line 44
    iget v2, p0, Ljlm;->a:I

    iput v2, v1, Ljlw;->b:I

    .line 45
    const-string/jumbo v2, "\u4e0b\u8f7d\u6210\u529f"

    iput-object v2, v1, Ljlw;->c:Ljava/lang/String;

    .line 70
    :goto_1
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-object v3, p1, Ljll;->c:Ljava/net/URL;

    iput-object v3, v2, Ljmd$a;->a:Ljava/net/URL;

    .line 71
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-object v3, v1, Ljlw;->e:Ljlu;

    iget-wide v4, v3, Ljlu;->b:J

    iput-wide v4, v2, Ljmd$a;->b:J

    .line 72
    const-wide/16 v2, 0x0

    iget-object v4, p0, Ljlm;->f:Ljmd$a;

    iget-wide v4, v4, Ljmd$a;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-object v3, p0, Ljlm;->f:Ljmd$a;

    iget-wide v4, v3, Ljmd$a;->j:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    iget-object v3, p0, Ljlm;->f:Ljmd$a;

    iget-wide v6, v3, Ljmd$a;->f:J

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    iput-wide v4, v2, Ljmd$a;->h:D

    .line 75
    :cond_1
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-boolean v3, v1, Ljlw;->a:Z

    iput-boolean v3, v2, Ljmd$a;->c:Z

    .line 77
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-boolean v2, v2, Ljmd$a;->c:Z

    if-eqz v2, :cond_4

    .line 78
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget v3, p0, Ljlm;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljmd$a;->k:Ljava/lang/String;

    .line 82
    :goto_2
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-object v3, p0, Ljlm;->e:Ljlm$a;

    iget-object v3, v3, Ljlm$a;->h:Ljava/lang/String;

    iput-object v3, v2, Ljmd$a;->l:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-object v3, v1, Ljlw;->f:Ljlv;

    iget-object v3, v3, Ljlv;->a:Ljava/lang/String;

    iput-object v3, v2, Ljmd$a;->i:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iput-object v2, v1, Ljlw;->i:Ljmd$a;

    .line 87
    iget-object v2, p0, Ljlm;->b:Ljlj;

    invoke-interface {v2, v1}, Ljlj;->a(Ljlw;)V

    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Ljlw;->a:Z

    .line 48
    iget-object v2, p0, Ljlm;->e:Ljlm$a;

    iget v2, v2, Ljlm$a;->f:I

    iput v2, v1, Ljlw;->b:I

    .line 49
    iget-object v2, v1, Ljlw;->h:Ljlw$a;

    iget-object v3, p0, Ljlm;->e:Ljlm$a;

    iget-boolean v3, v3, Ljlm$a;->c:Z

    .line 1111
    if-eqz v3, :cond_3

    .line 1112
    iget v3, v2, Ljlw$a;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljlw$a;->a:I

    .line 50
    :goto_3
    iget v2, v1, Ljlw;->b:I

    packed-switch v2, :pswitch_data_0

    .line 65
    :pswitch_0
    const-string/jumbo v2, "\u4e0b\u8f7d\u5931\u8d25"

    iput-object v2, v1, Ljlw;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 1114
    :cond_3
    iget v3, v2, Ljlw$a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljlw$a;->b:I

    goto :goto_3

    .line 52
    :pswitch_1
    const-string/jumbo v2, "url\u9519\u8bef"

    iput-object v2, v1, Ljlw;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 55
    :pswitch_2
    const-string/jumbo v2, "\u6587\u4ef6\u8bfb\u5199\u9519\u8bef"

    iput-object v2, v1, Ljlw;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 58
    :pswitch_3
    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    iput-object v2, v1, Ljlw;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 62
    :pswitch_4
    const-string/jumbo v2, "\u6587\u4ef6\u6821\u9a8c\u5931\u8d25"

    iput-object v2, v1, Ljlw;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 80
    :cond_4
    iget-object v2, p0, Ljlm;->f:Ljmd$a;

    iget-object v3, p0, Ljlm;->e:Ljlm$a;

    iget v3, v3, Ljlm$a;->f:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Ljlm;->e:Ljlm$a;

    iget v4, v4, Ljlm$a;->g:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljmd$a;->k:Ljava/lang/String;

    goto :goto_2

    .line 50
    :pswitch_data_0
    .packed-switch -0x12
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

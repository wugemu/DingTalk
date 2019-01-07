.class public final Likm;
.super Ljava/lang/Object;
.source "DataflowModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Likm;
    .locals 2

    .prologue
    .line 1094
    new-instance v0, Likm;

    invoke-direct {v0}, Likm;-><init>()V

    .line 80
    invoke-virtual {v0}, Likm;->a()V

    .line 82
    iput-object p0, v0, Likm;->a:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 83
    iput-object p1, v0, Likm;->b:Ljava/lang/String;

    .line 84
    iput-wide p2, v0, Likm;->c:J

    .line 85
    iput-wide p4, v0, Likm;->d:J

    .line 86
    iput-object p6, v0, Likm;->f:Ljava/lang/String;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, v0, Likm;->i:Z

    .line 89
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Likm;->i:Z

    .line 126
    iput-object v1, p0, Likm;->h:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->UNKNOWN:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    iput-object v0, p0, Likm;->a:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    .line 129
    iput-object v1, p0, Likm;->b:Ljava/lang/String;

    .line 130
    iput-wide v2, p0, Likm;->c:J

    .line 131
    iput-wide v2, p0, Likm;->d:J

    .line 132
    iput-object v1, p0, Likm;->e:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Likm;->f:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Likm;->g:Ljava/util/Map;

    .line 135
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lika;->e()Likn;

    move-result-object v0

    invoke-interface {v0, p0}, Likn;->a(Likm;)V

    .line 143
    return-void
.end method

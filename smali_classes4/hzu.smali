.class public final Lhzu;
.super Ljava/lang/Object;
.source "WKAlarm.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
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

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/alibaba/wukong/idl/log/models/AlarmModel;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/wukong/idl/log/models/AlarmModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/log/models/AlarmModel;-><init>()V

    .line 22
    .local v0, "model":Lcom/alibaba/wukong/idl/log/models/AlarmModel;
    iget-object v1, p0, Lhzu;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/log/models/AlarmModel;->moduleName:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lhzu;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/log/models/AlarmModel;->reason:Ljava/util/Map;

    .line 24
    iget v1, p0, Lhzu;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/log/models/AlarmModel;->subtype:Ljava/lang/Integer;

    .line 25
    iget-object v1, p0, Lhzu;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/log/models/AlarmModel;->subtypeDesc:Ljava/lang/String;

    .line 26
    return-object v0
.end method

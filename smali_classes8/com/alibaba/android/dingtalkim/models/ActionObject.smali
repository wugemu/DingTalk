.class public final Lcom/alibaba/android/dingtalkim/models/ActionObject;
.super Ljava/lang/Object;
.source "ActionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_UNCLICK:I


# instance fields
.field public action:Ljava/lang/String;

.field public backgroundColor:I

.field public frameColor:I

.field public id:J

.field public link:Ljava/lang/String;

.field public orgId:J

.field public status:I

.field public text:Ljava/lang/String;

.field public textColor:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromModelIDL(Ldsg;)Lcom/alibaba/android/dingtalkim/models/ActionObject;
    .locals 8
    .param p0, "model"    # Ldsg;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/ActionObject;-><init>()V

    .line 35
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/ActionObject;
    if-eqz p0, :cond_0

    .line 36
    iget-object v1, p0, Ldsg;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 36
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->id:J

    .line 37
    iget-object v1, p0, Ldsg;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 37
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->type:I

    .line 38
    iget-object v1, p0, Ldsg;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->text:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Ldsg;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 39
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->status:I

    .line 40
    iget-object v1, p0, Ldsg;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 40
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->textColor:I

    .line 41
    iget-object v1, p0, Ldsg;->f:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 41
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->frameColor:I

    .line 42
    iget-object v1, p0, Ldsg;->g:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 42
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->backgroundColor:I

    .line 43
    iget-object v1, p0, Ldsg;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->action:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Ldsg;->i:Ljava/lang/Long;

    .line 6044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 44
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->orgId:J

    .line 45
    iget-object v1, p0, Ldsg;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->link:Ljava/lang/String;

    .line 47
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final toModelIDL()Ldsg;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 51
    new-instance v0, Ldsg;

    invoke-direct {v0}, Ldsg;-><init>()V

    .line 52
    .local v0, "model":Ldsg;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldsg;->a:Ljava/lang/Long;

    .line 53
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldsg;->b:Ljava/lang/Integer;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->text:Ljava/lang/String;

    iput-object v1, v0, Ldsg;->c:Ljava/lang/String;

    .line 55
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldsg;->d:Ljava/lang/Integer;

    .line 56
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->textColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldsg;->e:Ljava/lang/Integer;

    .line 57
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->frameColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldsg;->f:Ljava/lang/Integer;

    .line 58
    iget v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->backgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ldsg;->g:Ljava/lang/Integer;

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->action:Ljava/lang/String;

    iput-object v1, v0, Ldsg;->h:Ljava/lang/String;

    .line 60
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/ActionObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldsg;->i:Ljava/lang/Long;

    .line 61
    return-object v0
.end method

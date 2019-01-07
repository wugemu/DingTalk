.class final Leel$1;
.super Ljava/lang/Object;
.source "OADatasourceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leel;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Leel;


# direct methods
.method constructor <init>(Leel;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Leel;

    .prologue
    .line 136
    iput-object p1, p0, Leel$1;->b:Leel;

    iput-object p2, p0, Leel$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    check-cast p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    check-cast p2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1140
    iget-object v0, p0, Leel$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Leel$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v2, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1142
    const/4 v0, -0x1

    .line 1144
    :goto_0
    return v0

    .line 1143
    :cond_0
    iget-object v0, p0, Leel$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v2, p2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1144
    const/4 v0, 0x1

    goto :goto_0

    .line 1147
    :cond_1
    iget v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->order:I

    iget v1, p2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->order:I

    sub-int/2addr v0, v1

    .line 136
    goto :goto_0
.end method

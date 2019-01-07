.class public Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "OrgEmployeeClosestEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_org_employee_closest"
.end annotation


# static fields
.field public static final NAME_AVATAR:Ljava/lang/String; = "avatar"

.field public static final NAME_EMP_NAME:Ljava/lang/String; = "emp_name"

.field public static final NAME_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NAME_NICK:Ljava/lang/String; = "nick"

.field public static final NAME_OID:Ljava/lang/String; = "oid"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_org_employee_closest"


# instance fields
.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "avatar"
        sort = 0x4
    .end annotation
.end field

.field public empName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "emp_name"
        sort = 0x5
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mobile"
        sort = 0x6
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nick"
        sort = 0x3
    .end annotation
.end field

.field public oid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "oid"
        nullable = false
        sort = 0x2
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tb_org_emp_closest_uid:1"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromOrgEmployeeClosestObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;)Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;-><init>()V

    .line 48
    .local v0, "result":Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->uid:J

    .line 49
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->orgId:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->oid:J

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->nick:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->avatar:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->empName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->empName:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->mobile:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 69
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->uid:J

    .line 70
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->oid:J

    .line 71
    iput-object v0, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->nick:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->avatar:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->empName:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->mobile:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toOrgEmployeeClosestObject()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;-><init>()V

    .line 59
    .local v0, "result":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->uid:J

    .line 60
    iget-wide v2, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->oid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->orgId:J

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->nick:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->avatarMediaId:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->empName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->empName:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->mobile:Ljava/lang/String;

    .line 65
    return-object v0
.end method

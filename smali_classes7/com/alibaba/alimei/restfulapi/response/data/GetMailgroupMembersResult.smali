.class public Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;
.super Ljava/lang/Object;
.source "GetMailgroupMembersResult.java"


# static fields
.field public static final PAGE_SIZE:I = 0x32


# instance fields
.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/MemberData;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/MemberData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->members:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->total:I

    return v0
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/MemberData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/MemberData;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->members:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->total:I

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mail list members ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/response/data/GetMailgroupMembersResult;->members:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

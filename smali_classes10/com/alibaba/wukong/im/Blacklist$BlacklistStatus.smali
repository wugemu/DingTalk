.class public final enum Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
.super Ljava/lang/Enum;
.source "Blacklist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/Blacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlacklistStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

.field public static final enum BLACKLISTED:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

.field public static final enum BLACKLISTING:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

.field public static final enum BOTH:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

.field public static final enum NORMAL:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;


# instance fields
.field private status:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    const-string/jumbo v1, "NORMAL"

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->NORMAL:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 32
    new-instance v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    const-string/jumbo v1, "BLACKLISTING"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTING:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 39
    new-instance v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    const-string/jumbo v1, "BLACKLISTED"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTED:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 42
    new-instance v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    const-string/jumbo v1, "BOTH"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BOTH:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->NORMAL:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTING:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTED:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BOTH:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->$VALUES:[Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "status"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-wide p3, p0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->status:J

    .line 48
    return-void
.end method

.method public static fromValue(J)Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 53
    invoke-static {}, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->values()[Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 54
    .local v0, "bs":Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    iget-wide v4, v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->status:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 58
    .end local v0    # "bs":Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    :goto_1
    return-object v0

    .line 53
    .restart local v0    # "bs":Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "bs":Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->NORMAL:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->$VALUES:[Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatus()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->status:J

    return-wide v0
.end method

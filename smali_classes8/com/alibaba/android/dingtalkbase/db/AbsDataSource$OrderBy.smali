.class public final enum Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;
.super Ljava/lang/Enum;
.source "AbsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

.field public static final enum ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

.field public static final enum DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;


# instance fields
.field private keyValue:Ljava/lang/String;

.field private orderBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    new-instance v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    const-string/jumbo v1, "ASC"

    const-string/jumbo v2, "ASC"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    .line 98
    new-instance v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    const-string/jumbo v1, "DESC"

    const-string/jumbo v2, "DESC"

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    .line 88
    new-array v0, v5, [Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->DESC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->$VALUES:[Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "orderBy"    # I
    .param p4, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->orderBy:I

    .line 102
    iput-object p4, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->$VALUES:[Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    return-object v0
.end method


# virtual methods
.method public final keyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue:Ljava/lang/String;

    return-object v0
.end method

.method public final orderBy()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->orderBy:I

    return v0
.end method

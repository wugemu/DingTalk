.class public Leyg;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "ConfRecordDataSourceImpl.java"


# static fields
.field public static final a:Ljava/lang/String;

.field static b:Leyg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "last_time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyg;->a:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Leyg;->b:Leyg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 36
    return-void
.end method

.class public final Lewc;
.super Ljava/lang/Object;
.source "QuickCallMenuDataManager.java"


# static fields
.field private static a:Leuw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lewc;->a:Leuw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 4
    .param p0, "errorCode"    # I
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    sget-object v0, Lewc;->a:Leuw;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lewc;->a:Leuw;

    .line 1149
    iget-object v1, v0, Leuw;->a:Lgws;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgws;->a:Z

    .line 1150
    iget-object v1, v0, Leuw;->a:Lgws;

    iput p0, v1, Lgws;->f:I

    .line 1151
    iget-object v1, v0, Leuw;->a:Lgws;

    iput-object p1, v1, Lgws;->e:Ljava/lang/String;

    .line 1152
    invoke-virtual {v0}, Leuw;->a()V

    .line 1153
    iput-object v3, v0, Leuw;->b:Lcma;

    .line 35
    sput-object v3, Lewc;->a:Leuw;

    .line 37
    :cond_0
    return-void
.end method

.method public static a(Leuw;)V
    .locals 0
    .param p0, "dataCenter"    # Leuw;

    .prologue
    .line 16
    sput-object p0, Lewc;->a:Leuw;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 20
    sget-object v0, Lewc;->a:Leuw;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lewc;->a:Leuw;

    .line 1143
    iget-object v1, v0, Leuw;->a:Lgws;

    iput-object p0, v1, Lgws;->d:Ljava/lang/String;

    .line 1144
    invoke-virtual {v0}, Leuw;->a()V

    .line 1145
    iput-object v2, v0, Leuw;->b:Lcma;

    .line 22
    sput-object v2, Lewc;->a:Leuw;

    .line 24
    :cond_0
    return-void
.end method

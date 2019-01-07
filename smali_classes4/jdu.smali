.class public final Ljdu;
.super Ljava/lang/Object;
.source "RollBackDynamic.java"


# static fields
.field static a:Z

.field static b:Z

.field static c:Z

.field static d:Z

.field static e:I

.field static f:I

.field static g:Z

.field static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Ljdu;->a:Z

    sput-boolean v1, Ljdu;->b:Z

    sput-boolean v1, Ljdu;->c:Z

    sput-boolean v1, Ljdu;->d:Z

    sput v1, Ljdu;->e:I

    sput v1, Ljdu;->f:I

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->g:Z

    sput-boolean v1, Ljdu;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljdu;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Ljdu;->a:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "startMark"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, "startMark"

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v2, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RollBackDynamic"

    const-string/jumbo v2, "AddStartMark"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljdu;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "endMark"

    invoke-static {p0, v0, v1, p1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "startMark"

    invoke-static {p0, v0, v1, p1}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RollBackDynamic"

    const-string/jumbo v2, "resetMark"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Ljbr;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "dexrollbackstatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RollBack because of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RollBackDynamic"

    const-string/jumbo v2, "rollBackDynamicFile"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljej;)V
    .locals 2

    sget-boolean v0, Ljdu;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljbr;->a(Landroid/content/Context;Ljej;)Z

    move-result v0

    sput-boolean v0, Ljdu;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->d:Z

    sget-boolean v0, Ljdu;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljdo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "loc"

    invoke-static {p0, v0}, Ljbr;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "dexrollbackstatistics"

    const-string/jumbo v1, "RollBack because of version error"

    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljdu;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Ljdu;->b:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "endMark"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, "endMark"

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v2, v0}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RollBackDynamic"

    const-string/jumbo v2, "AddEndMark"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    const/16 v3, 0x63

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljdu;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Ljdu;->h:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Ljdu;->g:Z

    goto :goto_0

    :cond_1
    sget v0, Ljdu;->e:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "startMark"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljdu;->e:I

    :cond_2
    sget v0, Ljdu;->f:I

    if-nez v0, :cond_3

    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "endMark"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljdu;->f:I

    :cond_3
    sget-boolean v0, Ljdu;->a:Z

    if-nez v0, :cond_7

    sget-boolean v0, Ljdu;->b:Z

    if-nez v0, :cond_7

    sget v0, Ljdu;->e:I

    sget v1, Ljdu;->f:I

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljdu;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->g:Z

    :cond_4
    sget v0, Ljdu;->e:I

    sget v1, Ljdu;->f:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_5

    sget v0, Ljdu;->e:I

    if-le v0, v3, :cond_5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljdu;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->g:Z

    :cond_5
    sget v0, Ljdu;->e:I

    sget v1, Ljdu;->f:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    sget v0, Ljdu;->e:I

    if-ge v0, v3, :cond_6

    const/4 v0, -0x2

    invoke-static {p0, v0}, Ljdu;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    sput-boolean v0, Ljdu;->g:Z

    :cond_6
    sget v0, Ljdu;->e:I

    sget v1, Ljdu;->f:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_7

    sget v0, Ljdu;->f:I

    if-gez v0, :cond_7

    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "checkMark"

    invoke-static {p0, v0, v1}, Ljdu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Ljdu;->g:Z

    :cond_7
    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "isload"

    sget-boolean v2, Ljdu;->g:Z

    invoke-static {p0, v0, v1, v2}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Ljdu;->h:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v0, Ljdu;->g:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RollBackDynamic"

    const-string/jumbo v2, "checkMark"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljdu;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "loc"

    const-string/jumbo v1, "isload"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RollBackDynamic"

    const-string/jumbo v2, "isLoad"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Ljdu;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v0

    invoke-static {p0, v0}, Ljdu;->a(Landroid/content/Context;Ljej;)V

    :cond_0
    sget-boolean v0, Ljdu;->c:Z

    return v0
.end method

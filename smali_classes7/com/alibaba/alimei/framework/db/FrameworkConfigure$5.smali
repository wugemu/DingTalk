.class final Lcom/alibaba/alimei/framework/db/FrameworkConfigure$5;
.super Ljava/lang/Object;
.source "FrameworkConfigure.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/db/FrameworkConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "set folder synckey to zero"

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 181
    const-string/jumbo v0, "UPDATE account SET syncKey=\"0\""

    .line 183
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    return-void
.end method

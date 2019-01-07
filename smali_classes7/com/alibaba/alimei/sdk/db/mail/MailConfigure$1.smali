.class final Lcom/alibaba/alimei/sdk/db/mail/MailConfigure$1;
.super Ljava/lang/Object;
.source "MailConfigure.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/db/mail/MailConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "MailConfigure:clean calendar syncKey 1 times"

    return-object v0
.end method

.method public final up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 108
    const-string/jumbo v0, "UPDATE Mailbox SET syncKey=\"0\" WHERE type=65 OR type=70"

    .line 112
    .local v0, "sql":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    return-void
.end method

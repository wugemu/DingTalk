.class Lcom/alibaba/alimei/orm/internal/a$1;
.super Ljava/lang/Object;
.source "CipherDBHelper.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/orm/internal/a;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alibaba/alimei/orm/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field final synthetic e:Lcom/alibaba/alimei/orm/internal/a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/orm/internal/a;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/orm/internal/a;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/orm/internal/a$1;->e:Lcom/alibaba/alimei/orm/internal/a;

    iput-object p2, p0, Lcom/alibaba/alimei/orm/internal/a$1;->d:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/a$1;->d:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

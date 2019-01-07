.class Lcom/alibaba/bee/impl/DebugTools$WarningMsg;
.super Ljava/lang/Object;
.source "DebugTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/impl/DebugTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WarningMsg"
.end annotation


# static fields
.field static final CURSOR_NOT_CLOSE_ERROR:Ljava/lang/String; = "Database cursor is not closed or statement execution is too slow. "

.field static final DATABASE_OPERATION_ON_MAIN_THREAD:Ljava/lang/String; = "Database operation can not be on the main thread. "

.field static final DO_NOT_END_TRANSACTION:Ljava/lang/String; = "Database may not end transaction or execution is too slow. "

.field static final STATEMENT_NOT_CLOSE_ERROR:Ljava/lang/String; = "SQLiteStatement is not closed or statement execution is too slow. "


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

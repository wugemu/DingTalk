.class final Lema$2;
.super Ljava/lang/Object;
.source "DbMonitorUtils.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lema;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notify(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "sql"    # Ljava/lang/String;
    .param p5, "duration"    # J
    .param p7, "stack"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static/range {p1 .. p7}, Lema;->a(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 141
    invoke-static {p3, p5, p6, p4}, Lema;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 148
    return-void
.end method

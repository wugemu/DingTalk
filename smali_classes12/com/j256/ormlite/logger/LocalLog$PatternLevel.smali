.class Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
.super Ljava/lang/Object;
.source "LocalLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/LocalLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatternLevel"
.end annotation


# instance fields
.field a:Ljava/util/regex/Pattern;

.field b:Lcom/j256/ormlite/logger/Log$Level;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Lcom/j256/ormlite/logger/Log$Level;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->a:Ljava/util/regex/Pattern;

    .line 224
    iput-object p2, p0, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->b:Lcom/j256/ormlite/logger/Log$Level;

    .line 225
    return-void
.end method

.class public final Lpl;
.super Ljava/lang/Object;
.source "AlimeiTraceLogger.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;
.implements Lym;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p1, p2, p3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

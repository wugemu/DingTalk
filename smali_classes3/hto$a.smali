.class public final Lhto$a;
.super Ljava/lang/Object;
.source "RunningStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:J

.field e:J

.field public f:J

.field g:J

.field h:I

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:I

.field m:I

.field public n:I

.field public o:I

.field final synthetic p:Lhto;


# direct methods
.method constructor <init>(Lhto;)V
    .locals 0
    .param p1, "this$0"    # Lhto;

    .prologue
    .line 129
    iput-object p1, p0, Lhto$a;->p:Lhto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method constructor <init>(Lhto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "this$0"    # Lhto;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "startupTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 133
    iput-object p1, p0, Lhto$a;->p:Lhto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lhto$a;->a:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lhto$a;->b:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lhto$a;->c:Ljava/lang/String;

    .line 137
    iput-wide p6, p0, Lhto$a;->d:J

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhto$a;->e:J

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lhto$a;->f:J

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhto$a;->g:J

    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lhto$a;->h:I

    .line 142
    iput-object p5, p0, Lhto$a;->i:Ljava/lang/String;

    .line 143
    iput v2, p0, Lhto$a;->j:I

    .line 144
    iput v2, p0, Lhto$a;->k:I

    .line 145
    iput v2, p0, Lhto$a;->l:I

    .line 146
    iput v2, p0, Lhto$a;->m:I

    .line 147
    iput v2, p0, Lhto$a;->n:I

    .line 148
    iput v2, p0, Lhto$a;->o:I

    .line 149
    return-void
.end method

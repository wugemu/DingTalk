.class public final Lbop;
.super Ljava/lang/Object;
.source "TimelineUsrDisplayStrategyImpl.java"

# interfaces
.implements Lbol;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

.field private static final d:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

.field private static final e:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

.field private static final f:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

.field private static final g:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2027
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 31
    sput v0, Lbop;->a:I

    sput v0, Lbop;->b:I

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    sget v1, Lbop;->a:I

    sget v2, Lbop;->b:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    sput-object v0, Lbop;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    sget v1, Lbop;->a:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lbop;->b:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    sput-object v0, Lbop;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    sget v1, Lbop;->a:I

    div-int/lit8 v1, v1, 0x3

    sget v2, Lbop;->b:I

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    sput-object v0, Lbop;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    sget v1, Lbop;->a:I

    div-int/lit8 v1, v1, 0x3

    sget v2, Lbop;->b:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    sput-object v0, Lbop;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 36
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    sget v1, Lbop;->a:I

    div-int/lit8 v1, v1, 0x3

    sget v2, Lbop;->b:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    sput-object v0, Lbop;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    const/16 v0, 0x8

    return v0
.end method

.method public final a(Landroid/content/Context;IILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "itemCount"    # I
    .param p4, "origSize"    # Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 18
    .line 1044
    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "imgs must > 0"

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 1046
    packed-switch p3, :pswitch_data_0

    .line 1056
    sget-object v0, Lbop;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 1052
    :goto_1
    return-object v0

    .line 1044
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1047
    :pswitch_0
    sget-object v0, Lbop;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    goto :goto_1

    .line 1048
    :pswitch_1
    sget-object v0, Lbop;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    goto :goto_1

    .line 1049
    :pswitch_2
    sget-object v0, Lbop;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    goto :goto_1

    .line 1052
    :pswitch_3
    sget-object v0, Lbop;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    goto :goto_1

    .line 1046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final b(I)I
    .locals 1
    .param p1, "spanCount"    # I

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 67
    const/16 v0, 0x23

    :goto_0
    return v0

    .line 63
    :pswitch_0
    const/16 v0, 0x32

    goto :goto_0

    .line 64
    :pswitch_1
    const/16 v0, 0x28

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

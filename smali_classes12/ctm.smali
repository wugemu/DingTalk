.class public final Lctm;
.super Ljava/lang/Object;
.source "ChatMsgActivityPermissionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lctm$d;,
        Lctm$e;,
        Lctm$b;,
        Lctm$a;,
        Lctm$c;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lbyw;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lctm;->a:[Ljava/lang/String;

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lctm;->b:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lctm;->c:[Ljava/lang/String;

    .line 35
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    sput-object v0, Lctm;->e:[Ljava/lang/String;

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v1, v0, v2

    sput-object v0, Lctm;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    const/4 v2, 0x0

    .line 45
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j()V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    new-instance v1, Lctm$c;

    invoke-direct {v1, p0, v2}, Lctm$c;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 50
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "requestCode"    # I

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 192
    :pswitch_0
    sget-object v0, Lctm;->f:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14545
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    .line 194
    sget-object v0, Lctm;->f:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lctm;->f:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14555
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    .line 198
    sget-object v0, Lctm;->f:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 15550
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    .line 201
    sget-object v0, Lctm;->f:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 124
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 126
    :pswitch_0
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j()V

    .line 128
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    .line 11180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 132
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 135
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 140
    :pswitch_1
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q()V

    .line 142
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 144
    :cond_2
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    .line 12180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 146
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 148
    :cond_3
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 149
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    sget-object v0, Lctm;->d:Lbyw;

    if-eqz v0, :cond_4

    .line 156
    sget-object v0, Lctm;->d:Lbyw;

    invoke-interface {v0}, Lbyw;->c()V

    .line 158
    :cond_4
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    .line 168
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lctm;->d:Lbyw;

    goto/16 :goto_0

    .line 160
    :cond_5
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 161
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    .line 13180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 162
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_1

    .line 164
    :cond_6
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 165
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_1

    .line 171
    :pswitch_3
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z()V

    .line 173
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->grant:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto/16 :goto_0

    .line 175
    :cond_7
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    .line 14180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 177
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onNeverAsk:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto/16 :goto_0

    .line 179
    :cond_8
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 180
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p1, "showRedDot"    # Z
    .param p2, "chatApp"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lctm$b;

    invoke-direct {v0, p0, p1, p2, v2}, Lctm$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;B)V

    sput-object v0, Lctm;->d:Lbyw;

    .line 78
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    new-instance v1, Lctm$b;

    invoke-direct {v1, p0, p1, p2, v2}, Lctm$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 80
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lctm;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 59
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->q()V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    new-instance v1, Lctm$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lctm$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 64
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lctm;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 3
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 89
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z()V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    new-instance v1, Lctm$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lctm$e;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;B)V

    invoke-static {p0, v0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 94
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lctm;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public static d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 4
    .param p0, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 103
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    invoke-static {p0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10545
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    invoke-static {p0, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    new-instance v2, Lctm$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lctm$d;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;B)V

    invoke-static {p0, v1, v2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    .line 108
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->showRation:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 110
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 115
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    invoke-static {p0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 116
    sget-object v1, Lctm;->f:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lctm;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lctm;->f:[Ljava/lang/String;

    return-object v0
.end method

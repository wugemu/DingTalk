.class public abstract Lccu$a;
.super Landroid/os/Binder;
.source "IUserService.java"

# interfaces
.implements Lccu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccu$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    invoke-virtual {p0, p0, v0}, Lccu$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lccu;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v1, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lccu;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lccu;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lccu$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lccu$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 385
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v5, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 51
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 52
    .local v8, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lccu$a;->a(JJ)Ljava/lang/String;

    move-result-object v26

    .line 53
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    const/4 v5, 0x1

    goto :goto_0

    .line 59
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 63
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 64
    .restart local v8    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lccu$a;->b(JJ)Ljava/lang/String;

    move-result-object v26

    .line 65
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    const/4 v5, 0x1

    goto :goto_0

    .line 71
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 75
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 76
    .restart local v8    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lccu$a;->c(JJ)Ljava/lang/String;

    move-result-object v26

    .line 77
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    const/4 v5, 0x1

    goto :goto_0

    .line 83
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 87
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 89
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg2":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 90
    invoke-virtual/range {v5 .. v10}, Lccu$a;->a(JJLjava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 96
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 100
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 102
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;

    .local v10, "_arg2":Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    :goto_1
    move-object/from16 v5, p0

    .line 108
    invoke-virtual/range {v5 .. v10}, Lccu$a;->a(JJLcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 106
    .end local v10    # "_arg2":Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    goto :goto_1

    .line 114
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Lcom/alibaba/android/dingtalk/userbase/model/UserEmployeeInfoObject;
    :sswitch_6
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 118
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, "_arg2":J
    move-object/from16 v12, p0

    move-wide v13, v6

    move-object v15, v8

    .line 121
    invoke-virtual/range {v12 .. v17}, Lccu$a;->a(JLjava/lang/String;J)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 127
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":J
    :sswitch_7
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 130
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lccu$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v26

    .line 131
    .local v26, "_result":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v26, :cond_1

    .line 133
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 137
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 143
    .end local v6    # "_arg0":J
    .end local v26    # "_result":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    :sswitch_8
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 146
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lccu$a;->b(J)Z

    move-result v26

    .line 147
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v26, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 148
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 153
    .end local v6    # "_arg0":J
    .end local v26    # "_result":Z
    :sswitch_9
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 157
    .local v4, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v8

    .line 158
    .local v8, "_arg1":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lccu$a;->a(Ljava/util/List;Lcct;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 161
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 165
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .end local v8    # "_arg1":Lcct;
    :sswitch_a
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 168
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lccu$a;->a(Ljava/util/List;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 171
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 175
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :sswitch_b
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 179
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v8

    .line 180
    .restart local v8    # "_arg1":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lccu$a;->a(JLcct;)J

    move-result-wide v26

    .line 181
    .local v26, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 187
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Lcct;
    .end local v26    # "_result":J
    :sswitch_c
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 190
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lccu$a;->c(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v26

    .line 191
    .local v26, "_result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v26, :cond_3

    .line 193
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 197
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 203
    .end local v6    # "_arg0":J
    .end local v26    # "_result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :sswitch_d
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 207
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 209
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v10

    .local v10, "_arg2":Lcct;
    move-object/from16 v5, p0

    .line 210
    invoke-virtual/range {v5 .. v10}, Lccu$a;->a(JJLcct;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 216
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Lcct;
    :sswitch_e
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 220
    .local v6, "_arg0":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 222
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v10, 0x1

    .line 224
    .local v10, "_arg2":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v23, 0x1

    .line 226
    .local v23, "_arg3":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v24, 0x1

    .line 228
    .local v24, "_arg4":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v25

    .local v25, "_arg5":Lcct;
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-wide/from16 v20, v8

    move/from16 v22, v10

    .line 229
    invoke-virtual/range {v18 .. v25}, Lccu$a;->a([JJZZZLcct;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 222
    .end local v10    # "_arg2":Z
    .end local v23    # "_arg3":Z
    .end local v24    # "_arg4":Z
    .end local v25    # "_arg5":Lcct;
    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    .line 224
    .restart local v10    # "_arg2":Z
    :cond_5
    const/16 v23, 0x0

    goto :goto_6

    .line 226
    .restart local v23    # "_arg3":Z
    :cond_6
    const/16 v24, 0x0

    goto :goto_7

    .line 235
    .end local v6    # "_arg0":[J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Z
    .end local v23    # "_arg3":Z
    :sswitch_f
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 239
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 241
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v10

    .local v10, "_arg2":Lcct;
    move-object/from16 v5, p0

    .line 242
    invoke-virtual/range {v5 .. v10}, Lccu$a;->b(JJLcct;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 248
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Lcct;
    :sswitch_10
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lccu$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v26

    .line 250
    .local v26, "_result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v26, :cond_7

    .line 252
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 258
    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 256
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 262
    .end local v26    # "_result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :sswitch_11
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 266
    .local v6, "_arg0":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v8

    .line 268
    .local v8, "_arg1":Lcct;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v10, 0x1

    .line 269
    .local v10, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v10}, Lccu$a;->a([JLcct;Z)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 268
    .end local v10    # "_arg2":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_9

    .line 275
    .end local v6    # "_arg0":[J
    .end local v8    # "_arg1":Lcct;
    :sswitch_12
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 279
    .restart local v6    # "_arg0":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v8

    .line 281
    .restart local v8    # "_arg1":Lcct;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v11, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v11}, Lccu$a;->a([JLcct;Ljava/util/List;)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 285
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 289
    .end local v6    # "_arg0":[J
    .end local v8    # "_arg1":Lcct;
    .end local v11    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :sswitch_13
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v8

    .line 295
    .local v8, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v10

    .line 296
    .local v10, "_arg2":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v10}, Lccu$a;->a(Ljava/lang/String;[JLcct;)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 302
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":[J
    .end local v10    # "_arg2":Lcct;
    :sswitch_14
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 306
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v8

    .line 307
    .local v8, "_arg1":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lccu$a;->b(Ljava/util/List;Lcct;)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 313
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .end local v8    # "_arg1":Lcct;
    :sswitch_15
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v6

    .line 316
    .local v6, "_arg0":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lccu$a;->a(Lcct;)V

    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 322
    .end local v6    # "_arg0":Lcct;
    :sswitch_16
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 325
    .local v6, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lccu$a;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v26

    .line 326
    .local v26, "_result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v26, :cond_9

    .line 328
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 332
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 338
    .end local v6    # "_arg0":J
    .end local v26    # "_result":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :sswitch_17
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 342
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v8

    .line 343
    .restart local v8    # "_arg1":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lccu$a;->b(JLcct;)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 349
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Lcct;
    :sswitch_18
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v10

    .line 356
    .restart local v10    # "_arg2":Lcct;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v10}, Lccu$a;->a(Ljava/lang/String;Ljava/lang/String;Lcct;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 362
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Lcct;
    :sswitch_19
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 366
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 368
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcct$a;->a(Landroid/os/IBinder;)Lcct;

    move-result-object v10

    .restart local v10    # "_arg2":Lcct;
    move-object/from16 v5, p0

    .line 369
    invoke-virtual/range {v5 .. v10}, Lccu$a;->c(JJLcct;)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 375
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Lcct;
    :sswitch_1a
    const-string/jumbo v5, "com.alibaba.android.dingtalk.userbase.aidl.IUserService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 379
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 380
    .restart local v8    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lccu$a;->d(JJ)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
